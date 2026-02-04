// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import {getFirestore} from "firebase/firestore"
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyBgYiAy5D-r55RfSz-4j23TCyONDW-zCXs",
  authDomain: "firstapp-ddec4.firebaseapp.com",
  projectId: "firstapp-ddec4",
  storageBucket: "firstapp-ddec4.firebasestorage.app",
// Initialize Firebase
  messagingSenderId: "947799663684",
  appId: "1:947799663684:web:4dae79009d9fe9d7d08811"
};

const app = initializeApp(firebaseConfig);
export const db = getFirestore(app);