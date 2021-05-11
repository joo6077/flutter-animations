import 'package:flutter/material.dart';
import 'package:ninja_trips/mixin.dart';
import 'package:ninja_trips/screens/home.dart';
import 'package:ninja_trips/screens/sandbox.dart';

void main() {
  // Moderator().postComment();
  // Moderator().deleteComment();
  // Publisher().postComment();
  // Publisher().publishArticle();
  // Admin().postComment();
  // Admin().deleteComment();
  // Admin().publishArticle();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Trips',
      home: Home(),
    );
  }
}
