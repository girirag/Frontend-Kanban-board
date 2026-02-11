from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from typing import List, Optional
import json
import os
from datetime import datetime
import firebase_admin
from firebase_admin import credentials, firestore

app = FastAPI(title="Kanban Board API", version="1.0.0")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class Task(BaseModel):
    id: int
    text: str
    column: str

class TaskCreate(BaseModel):
    text: str
    column: str = "Planning"

class TaskUpdate(BaseModel):
    text: Optional[str] = None
    column: Optional[str] = None

firebase_db = None
firebase_connected = False

def init_firebase():
    global firebase_db, firebase_connected
    try:
        if not firebase_admin._apps:
            cred = credentials.ApplicationDefault()
            firebase_admin.initialize_app(cred)
        
        firebase_db = firestore.client()
        firebase_connected = True
        print("✅ Firebase initialized successfully")
        return True
    except Exception as e:
        print(f"❌ Firebase initialization failed: {e}")
        firebase_connected = False
    return False

init_firebase()

@app.get("/")
async def root():
    return {
        "message": "Kanban Board API is running on Firebase",
        "firebase_status": "connected" if firebase_connected else "disconnected"
    }

@app.get("/tasks", response_model=List[Task])
async def get_tasks():
    try:
        if not firebase_connected or not firebase_db:
            raise HTTPException(status_code=503, detail="Firebase not connected")
        
        tasks_ref = firebase_db.collection('kanban-tasks')
        docs = tasks_ref.stream()
        
        tasks = []
        for doc in docs:
            task_data = doc.to_dict()
            task_data['id'] = int(doc.id)
            tasks.append(Task(**task_data))
        
        return tasks
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error fetching tasks: {str(e)}")

@app.post("/tasks", response_model=Task)
async def create_task(task: TaskCreate):
    try:
        if not firebase_connected or not firebase_db:
            raise HTTPException(status_code=503, detail="Firebase not connected")
        
        tasks_ref = firebase_db.collection('kanban-tasks')
        docs = list(tasks_ref.stream())
        next_id = max([int(doc.id) for doc in docs], default=0) + 1
        
        new_task = {
            "text": task.text,
            "column": task.column
        }
        
        doc_ref = firebase_db.collection('kanban-tasks').document(str(next_id))
        doc_ref.set(new_task)
        
        new_task['id'] = next_id
        return Task(**new_task)
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error creating task: {str(e)}")

@app.put("/tasks/{task_id}", response_model=Task)
async def update_task(task_id: int, task_update: TaskUpdate):
    try:
        if not firebase_connected or not firebase_db:
            raise HTTPException(status_code=503, detail="Firebase not connected")
        
        doc_ref = firebase_db.collection('kanban-tasks').document(str(task_id))
        doc = doc_ref.get()
        
        if not doc.exists:
            raise HTTPException(status_code=404, detail="Task not found")
        
        update_data = {}
        if task_update.text is not None:
            update_data['text'] = task_update.text
        if task_update.column is not None:
            update_data['column'] = task_update.column
        
        if update_data:
            doc_ref.update(update_data)
        
        updated_doc = doc_ref.get()
        task_data = updated_doc.to_dict()
        task_data['id'] = task_id
        
        return Task(**task_data)
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error updating task: {str(e)}")

@app.delete("/tasks/{task_id}")
async def delete_task(task_id: int):
    try:
        if not firebase_connected or not firebase_db:
            raise HTTPException(status_code=503, detail="Firebase not connected")
        
        doc_ref = firebase_db.collection('kanban-tasks').document(str(task_id))
        doc = doc_ref.get()
        
        if not doc.exists:
            raise HTTPException(status_code=404, detail="Task not found")
        
        doc_ref.delete()
        return {"message": f"Task {task_id} deleted successfully"}
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error deleting task: {str(e)}")

@app.get("/health")
async def health_check():
    return {
        "status": "healthy",
        "firebase_connected": firebase_connected,
        "storage": "firebase"
    }
