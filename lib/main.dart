import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screen/homepage.dart';
import './provider/transction_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static  Map<int,Color> colorMap={
    50:Color.fromRGBO(42, 54, 59, 0.1),
    100:Color.fromRGBO(42, 54, 59, 0.2),
    200:Color.fromRGBO(42, 52, 59, 0.3),
     300:Color.fromRGBO(42, 52, 59, 0.4),
      400:Color.fromRGBO(42, 52, 59, 0.5),
       500:Color.fromRGBO(42, 52, 59, 0.6),
       600:Color.fromRGBO(42, 52, 59, 0.7),
        700:Color.fromRGBO(42, 52, 59, 0.8),
         800:Color.fromRGBO(42, 52, 59, 0.9),
          900:Color.fromRGBO(42, 52, 59, 1.0),};


          static  MaterialColor _2A3636 = MaterialColor(0xFF2A3638, colorMap);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    ChangeNotifierProvider
      (create: (ctx)=>Transactions(),
      child: MaterialApp(
        title: 'Personal ',
        theme: ThemeData(
        
          primarySwatch: _2A3636,
        ),
        home:HomePage(),
        debugShowCheckedModeBanner: false,
    
      ),
    );
  }
}

