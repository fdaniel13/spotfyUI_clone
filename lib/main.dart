import 'package:clone_spotify/pages/primaryPage/views/primaryView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context)=>PrimaryView()
    },
    initialRoute: '/',
  ));
}

