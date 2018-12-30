import 'package:flutter/material.dart';
import 'package:tresor_app/widget/list_view_item.dart';

class ListOfSpending extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 8.0),
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListViewItem();
        });
  }
}