import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:v1/Screens/Results/jasonresult.dart';
import 'package:v1/Screens/Results/result.dart';
import 'package:v1/Screens/cataloge/cataloge.dart';
import 'package:v1/Screens/materialadd/MatList.dart';

import 'package:v1/Screens/news/newspage.dart';
import 'package:v1/ui/ShapesPainter.dart';

import 'package:v1/Screens/ProfilePage.dart';
import 'package:v1/ui/drower.dart';
import 'package:v1/ui/listview_employees.dart';

class DashBoard extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Home"),
        ),
        drawer: drower(),
        body: Stack(
          children: [
            Container(
              child: CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  height: size.height / 2,
                  // color: Colors.blueAccent,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    createGridItem(0),
                    createGridItem(1),
                    createGridItem(2),
                    createGridItem(3),
                    createGridItem(4),
                    createGridItem(5),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createGridItem(int position) {
    var color = Colors.white;
    var icondata = Icons.add;
    var text = "";
    switch (position) {
      case 0:
        color = Colors.cyan;
        icondata = Icons.add;
        text = "Register Course";
        break;
      case 1:
        color = Colors.deepPurple;
        text = "Course Cataloge";
        icondata = Icons.folder_special;
        break;
      case 2:
        color = Colors.orange[300];
        icondata = Icons.library_books;
        text = "Results";
        break;
      case 3:
        color = Colors.pinkAccent;
        icondata = Icons.access_time;
        text = "Top News";
        break;
      case 4:
        color = Colors.teal[900];
        icondata = Icons.file_download;
        text = "Matirial";
        break;
      case 5:
        color = Colors.green[600];
        icondata = Icons.list;
        text = "smsm";
        break;
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
        child: Card(
          elevation: 10,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
//              Scaffold.of(context).showSnackBar(
//                  SnackBar(content: Text("Selected Item $position")));
              if (position == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => newspage()),
                );
              }else if(position == 4){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewEmployees()),
                );
              }else if(position == 0){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoviesPage ()),
                );
              }else if(position == 1){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cataloge ()),
                );
              }else if(position == 2){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomColumnTable ()),
                );
              }
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icondata,
                    size: 40,
                    color: Colors.white,

                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "$text",
                      style: TextStyle(color: Colors.white, fontSize: 15),

                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );

    });
  }
}
