import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/transction_provider.dart';
import '../custom/tx_list.dart';
import 'package:intl/intl.dart';

class Transaction extends StatefulWidget {
  Transaction(this.height);

  final double height;

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  int _date = 16;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final transactionProvider =
        Provider.of<Transactions>(context, listen: false);

    return Positioned(
      left: mediaQuery.size.width * .03,
      bottom: 0,
      
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: mediaQuery.size.width * .94,
        height: mediaQuery.size.height*widget.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        ),
        child: Column(
          children: [
            Column(children: [
              Container(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 12),
                      child: const Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _date++;
                            });
                          },
                          child: const Icon(Icons.arrow_left),
                        ),
                        Text('$_date ${DateFormat('MMMM yyyy').format(
                          DateTime.now(),
                        )}',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _date--;
                            });
                          },
                          child: const Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
            Expanded(
              child: ListView.builder(
                itemCount: transactionProvider.transaction.length,
                itemBuilder: (ctx, i) =>
                    TxList(transactionProvider.transaction[i]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
