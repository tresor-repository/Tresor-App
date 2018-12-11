import 'package:flutter/material.dart';
import 'package:tresor_app/styles.dart';

class SpendingTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: smallPadding,
        vertical: tinyPadding,
      ),
      margin: EdgeInsets.symmetric(
        vertical: smallPadding,
        horizontal: tinyPadding,
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: smallPadding,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      Text(
                        'Total Spending',
                        style: titleTextStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    'Rp2.500.000',
                    style: titleTextStyle,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            margin: EdgeInsets.only(
              top: mainPadding,
              bottom: smallPadding,
              left: smallPadding,
              right: smallPadding,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              color: mainColor,
            ),
            child: Text(
              'Add Spending +',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
