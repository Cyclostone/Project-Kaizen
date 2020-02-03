import 'package:basics_web/locator.dart';
import 'package:basics_web/views/home/home_content_desktop.dart/home_view.dart';
import 'package:flutter/material.dart';

void main(){ 
  setupLocator();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'WebDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: HomeView(),
    );
  }
}

 