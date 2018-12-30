import 'package:flutter/material.dart';
import 'spending_detail.dart';
import 'package:tresor_app/home/add_spending_tab.dart';
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
  final List<Widget> widgetList = <Widget>[
    AddSpendingTab(),
    SpendingDetail(),
    AddSpendingTab(),
    AddSpendingTab(),
  ];

  int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("New Tresor App"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_burger_icon_big.png',
                  height: 40.0,
                  width: 40.0,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: mainColor),
                )),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_burger_icon_big.png',
                  height: 40.0,
                  width: 40.0,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: mainColor),
                )),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_burger_icon_big.png',
                  height: 40.0,
                  width: 40.0,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: mainColor),
                )),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_burger_icon_big.png',
                  height: 40.0,
                  width: 40.0,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: mainColor),
                )),
          ],
          currentIndex: currentIndex,
          iconSize: 40.0,
          fixedColor: mainColor,
          onTap: (selectedIndex) {
            setState(() {
              currentIndex = selectedIndex;
            });
          },
        ),
        body: Center(
          child: Container(
            child: widgetList[currentIndex],
            color: lightGrey,
          ),
        ));
  }
}
