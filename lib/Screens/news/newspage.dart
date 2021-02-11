import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:v1/Screens/news/card.dart';

class newspage extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              title: Text("Top News"),
              leading:IconButton(icon:Icon(Icons.arrow_back) , onPressed: (){Navigator.pop(context);},) ,
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(child: card()),
                  Text(
                    "swipe to right get more :) ",
                    style:
                    TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),Text(
                    "and press on photo to get more information :) ",
                    style:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  )
                ])));
  }
}
