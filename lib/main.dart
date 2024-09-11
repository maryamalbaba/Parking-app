import 'package:flutter/material.dart';
import 'package:parkingapp/feature/categories/bloc/CategoriesUi.dart';
import 'package:parkingapp/feature/mapui.dart';
import 'package:parkingapp/feature/signup/Signup_Ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: SignupUI(),
       );
  }
}
