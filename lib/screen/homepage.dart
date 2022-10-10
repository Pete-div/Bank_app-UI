import 'package:flutter/material.dart';
import '../custom/header.dart';
import '../custom/transaction.dart';
import '../custom/new_transaction.dart';


class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height =.55;
  double _opacity =.9;
   void _addTx (){
    setState(() {
      _height =.68;
      _opacity= 1;
    });
   }

void done (){
  setState(() {
     _height =.55;
      _opacity= .9;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.short_text),
          ),
          title: const Text(
            'Personal Finance',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: done,
              icon: const Icon(Icons.person_add_alt_outlined),
            ),
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Header(_addTx),
                NewTx(done, _opacity)
              ],
            ),
            
             Transaction(_height),
           
          ],
        ),);
  }
}
