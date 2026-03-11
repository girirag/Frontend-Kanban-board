import { auth, googleProvider } from './firebase';
import { signInWithRedirect, getRedirectResult, signOut, onAuthStateChanged, type User } from 'firebase/auth';

export async function signInWithGoogle(): Promise<User | null> {
  try {
    await signInWithRedirect(auth, googleProvider);
    return null; // User will be redirected, result handled on return
  } catch (error) {
    console.error('Error signing in with Google:', error);
    throw error;
  }
}

export async function handleRedirectResult(): Promise<User | null> {
  try {
    const result = await getRedirectResult(auth);
    return result?.user || null;
  } catch (error) {
    console.error('Error handling redirect result:', error);
    throw error;
  }
}

export async function logout(): Promise<void> {
  try {
    await signOut(auth);
  } catch (error) {
    console.error('Error signing out:', error);
    throw error;
  }
}

export function onAuthChange(callback: (user: User | null) => void) {
  return onAuthStateChanged(auth, callback);
}
