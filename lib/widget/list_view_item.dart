import 'package:flutter/material.dart';
import 'package:tresor_app/styles.dart';

class ListViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        boxShadow: genericShadow,
      ),
      margin: EdgeInsets.all(6.0),
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                'assets/ic_burger_icon_big.png',
                width: 60.0,
                height: 60.0,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Rp 50.000,00', style: titleTextStyle),
                      Text('#Makan#Siang#Liburan', style: titleTextStyle)
                    ],
                  ),
                ),
                flex: 4,
              ),
              Expanded(
                child: Image.network(
                    'https://en.wikipedia.org/wiki/Main_Page#/media/File:Moscow-Bolshoi-Theare-1.jpg'),
                flex: 1,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              '#Liburan#Makan Martabak Telor Mang Udin the Conqueror #Siang 3 paket',
              style: TextStyle(color: darkerGrey),
            ),
          ),
          Container(
            alignment: Alignment(-1.0, 0.0),
            child: Text(
              '08.32 WIB February 17th 2017',
              style: TextStyle(color: darkGrey),
            ),
          )
        ],
      ),
    );
  }
}
