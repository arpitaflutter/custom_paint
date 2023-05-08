import 'package:custom_paint/screens/home/view/homeScreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => homeScreen(),
      },
    ),
  );
}