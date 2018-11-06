import 'package:flutter/material.dart';
import 'package:tresor_app/list_of_spending.dart';
import 'package:tresor_app/styles.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: mainColor,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("New Tresor App"),
      ),
      body: Container(
        child: ListOfSpending(),
        color: lightGrey,
      ),
    );
  }
}
