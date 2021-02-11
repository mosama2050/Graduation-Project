import 'package:flutter/material.dart';
import 'package:v1/Screens/Results/dropdown.dart';

class result extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _resultstate();
}

class _resultstate extends State<result> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.grey,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return ListView(
            children: <Widget>[
              Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                TableRow(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        color: Colors.blue,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Year ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            DropDown(),
                          ],
                        )),
                  ],
                ),
              ]),
              Table(border: TableBorder.all(color: Colors.black), children: [
                TableRow(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Text(
                        "Frist Term 2020",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              Column(
                children: <Widget>[
                  Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(
                            "Course ID",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Course Name",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Result",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Absent Lab",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Absent Lec",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Total Absent",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ]),
                      ]),
                ],
              ),
              Column(
                children: <Widget>[
                  Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(
                            "Cs 223",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Java",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),

                        ]),
                      ]),
                ],
              ), Column(
                children: <Widget>[
                  Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(
                            "Cs 223",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Java",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),

                        ]),
                      ]),
                ],
              ), Column(
                children: <Widget>[
                  Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(
                            "Cs 223",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Java",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),

                        ]),
                      ]),
                ],
              ), Column(
                children: <Widget>[
                  Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(
                            "Cs 223",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Java",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),

                        ]),
                      ]),
                ],
              ), Column(
                children: <Widget>[
                  Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(
                            "Cs 223",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Java",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),

                        ]),
                      ]),
                ],
              ), Column(
                children: <Widget>[
                  Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(
                            "Cs 223",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Java",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),
                          Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,

                            ),
                          ),

                        ]),
                      ]),
                ],
              ),

            ],
          );
        },
      ),
      bottomSheet:Row(mainAxisAlignment: MainAxisAlignment.center
        ,crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Icon(Icons.more , color: Colors.grey,),
          Text(
            "  Rotate The phone to get more information",
            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 15.0,

              color: Colors.grey[800],
            ),
          ),],
      ),
    );
  }
}
