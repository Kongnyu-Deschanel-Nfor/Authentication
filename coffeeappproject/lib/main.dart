import 'package:coffeeappproject/pages/Home.dart';
import 'package:coffeeappproject/pages/Login.dart';
import 'package:coffeeappproject/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context)=>const SignUpWidget(),
      '/login':(context)=>const Login(),
      '/home':(context)=>const Home(),
    },
    debugShowCheckedModeBanner: false,
  ));
}



