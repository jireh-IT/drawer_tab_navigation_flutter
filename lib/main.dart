import 'package:drawer_tab_navigation/screens/settings.dart';
import 'package:drawer_tab_navigation/screens/videos.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        'home' : (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        'settings' : (context) => Settings(),
        'videos' : (_) => Videos(),
      },
    );
  }
}


