import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

class AuthServiceUser {
  FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  //register user
Future <User?> register(String email,String password) async {

 UserCredential userCredential=  await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

 return userCredential.user;
}
}
