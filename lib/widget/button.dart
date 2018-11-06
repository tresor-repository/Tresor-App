import 'package:flutter/material.dart';
import 'package:tresor_app/styles.dart';

class TresorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      height: 40.0,
      child: Text(
        "Halo",
      ),
    );
  }
}
