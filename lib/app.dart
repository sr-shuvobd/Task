import 'package:flutter/material.dart';
import 'package:taskapp_m11/ui/screen/splashscreen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task Manager",
      theme:ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w500),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          focusColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),


        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:  ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10),
                elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
          )
        ),
      ),
      home: SplashScreen(
      ),
    );
  }
}
