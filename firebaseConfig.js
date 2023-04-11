// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyAon4ogLBMlZVXbWJSJ0D033pATmdJkyng",
  authDomain: "dreamst-84fca.firebaseapp.com",
  projectId: "dreamst-84fca",
  storageBucket: "dreamst-84fca.appspot.com",
  messagingSenderId: "290300541087",
  appId: "1:290300541087:web:ef9c443cd722da8b408aaa",
  measurementId: "G-PXHRKJZEFG"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);