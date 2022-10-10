import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import '../provider/transction_provider.dart';

class TxList extends StatelessWidget {
  final Transaction transaction;
  TxList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right:8,top: 2),
      child: Container(
        height: 70,
        child: ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: transaction.color.withOpacity(.8),
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Icon(
              transaction.iconData,
              size: 20,
              color: Colors.white,
            ),
          ),
          title: Text(
            transaction.title,
          ),
        subtitle: Text(transaction.category,),
        trailing: Text('\$${transaction.value}'),
        ),
      ),
    );
  }
}
