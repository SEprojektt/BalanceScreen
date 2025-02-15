

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flare_flutter/flare_actor.dart';

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
          backgroundColor: Color.fromRGBO(39, 50, 80, 0.2),

          appBar: AppBar(
            title: Text("YOUR BALANCE"),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(128,128,128,0.2),
          ),

          body: TransactionsScreen(),
        )
    );
  }
}




class TransactionsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child : Row(
              children: <Widget>[

                SizedBox(
                  width: 80,
                  height: 60,




                ),

                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Hi,", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900, color : Colors.white),),
                    Text("Dharitri Talukdar", style: TextStyle(fontSize: 24, color : Colors.white, fontWeight: FontWeight.w600),),






//
                  ],
                ),


              ],
            )

        ),

        Padding(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blueGrey, Color.fromRGBO(41, 69, 93, 0.4)]),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Your Balance Amount is", style: TextStyle(fontWeight: FontWeight.bold, color : Colors.white),),
                  Text("\₹ 10000", style: TextStyle(color : Colors.white, fontSize: 42),),
                ],
              ),
            ),
          ),
        ),

        Text("STATEMENT FOR YOUR CARD 00XXXXXXXXXXXXX89", style: TextStyle(fontWeight: FontWeight.bold, color : Colors.white),),

        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(60, 63, 65, 0.6),

                  ),
                  child: ListTile(
                    title: Text("Transaction $index", style: TextStyle(fontWeight: FontWeight.bold, color : Colors.white),),
                    subtitle: Text("Some brief detail of transaction no $index", style: TextStyle(color : Colors.white),),
                    contentPadding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                    trailing: Text("DEBIT", style: TextStyle(fontWeight: FontWeight.bold, color : Colors.greenAccent),),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}