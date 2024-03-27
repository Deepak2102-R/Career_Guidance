// import 'package:career_app/firebase_options.dart';
import 'package:career_app/pages/home_page.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:career_app/pages/login_page.dart';
import 'package:career_app/pages/register_page.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Career_Guidance',
      home: LoginPage() ,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black12,
        primaryColor: Color.fromARGB(255, 1, 19, 33)),
    );
  }
}
