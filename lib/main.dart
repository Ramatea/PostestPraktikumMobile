import 'package:flutter/material.dart';
import 'package:postest4mobile/input_trackingpaketApp_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nazel Expedisi App' ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.greenAccent,
          brightness: Brightness.light
      ),

      home: const MyWidget(title: 'Nazel Expedition',),
    );
  }
}