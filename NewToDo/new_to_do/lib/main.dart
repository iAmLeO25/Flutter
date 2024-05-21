import 'package:flutter/material.dart';
import 'package:new_to_do/screens/AddTask.dart';
import 'package:new_to_do/screens/LoginTask.dart';
import 'package:new_to_do/screens/TodoHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Logintask(),
      // home is no longer required when using named routes
      // we must define the initial route for the app
      // initial route defines which route to open when app start
      initialRoute: '/home',
      // routes is an object that holds path which defines which screen
      // to open when we navigated through name
      routes: {
        '/': (context) => Logintask(),
        '/home': (context) => Todohome(),
      },
    );
  }
}
