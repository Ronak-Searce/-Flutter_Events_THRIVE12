import 'package:flutter/material.dart';
import 'package:smartvisitingcard/LoginScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'smart Visisting Card',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyLogin(),
    );
  }
}
