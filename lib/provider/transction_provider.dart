import 'package:flutter/material.dart';

class Transaction {
  final int id;
  final String title;
  final double value;
  final String category;
  final IconData iconData;
  final Color color;
  Transaction(
      {required this.category,
      required this.color,
      required this.iconData,
      required this.id,
      required this.title,
      required this.value});
}

class Transactions with ChangeNotifier{
  List<Transaction> _transaction =[
    Transaction(
      category: 'Meal', 
      color: Colors.red,
       iconData: Icons.fastfood,
        id: 1,
         title: 'Owner', 
         value: 123.4),
         Transaction(
      category: 'Business', 
      color: Colors.green,
       iconData: Icons.business_center,
        id: 2,
         title: 'Buyer', 
         value: 13.4),
         Transaction(
      category: 'Meal', 
      color: Colors.red,
       iconData: Icons.fastfood,
        id: 1,
         title: 'Owner', 
         value: 123.4),
         Transaction(
      category: 'Gift', 
      color: Colors.blue,
       iconData: Icons.gif_outlined,
        id: 3,
         title: 'Baby', 
         value: 343.4),
         Transaction(
      category: 'Entertainment', 
      color: Colors.deepPurple,
       iconData: Icons.music_note_outlined,
        id: 4,
         title: 'Artist', 
         value: 21.4),
         Transaction(
      category: 'Gaming', 
      color: Colors.orange,
       iconData: Icons.gamepad,
        id: 5,
         title: 'Guyyy', 
         value: 7.4),
        //  Transaction(
      // category: 'Meal', 
      // color: Colors.red,
      //  iconData: Icons.fastfood,
      //   id: 1,
      //    title: 'Owner', 
      //    value: 123.4),
      
  ];
  List<Transaction> get transaction => _transaction;
}
