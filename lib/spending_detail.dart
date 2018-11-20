import 'package:flutter/material.dart';

class SpendingDetail extends StatefulWidget {

  @override
  State createState() => new SpendingDetailState();
}

class SpendingDetailState extends State<SpendingDetail> {

  static final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<
      ScaffoldState>();

  List<Icon> icons = <Icon>[new Icon(Icons.phone)];
  int selectedIndex = -1;

  void selectItem(int selected) {
    setState(() {
      if (selectedIndex == selected) {
        selectedIndex = -1;
      } else {
        selectedIndex = selected;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text("Add Spending"),
      ),
      body: new Padding(
        padding: EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text("Amount"),
            new Row(
              children: <Widget>[
                new Text("Rp"),
                new Container(width: 10.0,),
                new SizedBox(
                  child: new TextField(
                    keyboardType: TextInputType.numberWithOptions(),
                    maxLines: 1,
                  ),
                  width: 200.0,
                )
              ],
            ),
            new Container(height: 20.0,),
            new Text("Description"),
            new ConstrainedBox(
              constraints: new BoxConstraints(),
              child: new TextField(
                maxLines: 2,
              ),
            ),
            new Container(height: 20.0,),
            new Text("Category"),
            new Flexible(
              child: new GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: 10,
                  itemBuilder: (context, i) {
                    return new GestureDetector(
                        onTap: () {
                          selectItem(i);
                        },
                        child: new Container(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.all(
                                    new Radius.circular(10.0)),
                                color: (selectedIndex == i)
                                    ? Colors.blue
                                    : theme.canvasColor
                            ),
                            child: Icon(Icons.question_answer),
                          ),
                        )
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}