import 'package:exam/care.dart';
import 'package:exam/home.dart';
import 'package:flutter/material.dart';
import 'package:exam/profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         useMaterial3: false,

      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "care",
      routes: {
        "home": (context) => home(),
        "profile":(context)=>profile(),
        "care":(context)=>care()
      },
    );
  }
}
