
import 'package:uibank/TransactionScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Color.fromRGBO(39, 50, 80, 1),

          appBar: AppBar(
            title: Text("YOUR BALANCE"),
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
          ),

          body: TransactionsScreen(),
        )
    );
  }
}