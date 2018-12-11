import 'package:flutter/material.dart';
import 'package:tresor_app/widget/list_view_item.dart';
import 'package:tresor_app/widget/spending_total.dart';

class ListOfSpending extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 8.0),
        itemCount: 6,
        shrinkWrap: true,
        itemBuilder: (context, index) {
        if(index == 0) return SpendingTotal();
        else  return ListViewItem();
        });
  }
}