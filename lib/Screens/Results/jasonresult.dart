import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:json_table/json_table.dart';
import 'package:json_table/json_table_column.dart';
import 'package:v1/Screens/Results/dropdown.dart';

class CustomColumnTable extends StatefulWidget {
  @override
  _CustomColumnTableState createState() => _CustomColumnTableState();
}

class _CustomColumnTableState extends State<CustomColumnTable> {
  final String jsonSample =
      '[{"id":"123","name":"java","YearWork":0,"MidTerm":0,"WrittenExam":0,"Total":0 ,"Grade":"NR" ,"AbsentLab":0 ,"AbsentLec":0 ,"TotalAbsent":0},'
      '{"id":"123","name":"java","YearWork":0,"MidTerm":0,"WrittenExam":0,"Total":0 ,"Grade":"NR" ,"AbsentLab":0 ,"AbsentLec":0 ,"TotalAbsent":0},'
      '{"id":"123","name":"java","YearWork":0,"MidTerm":0,"WrittenExam":0,"Total":0 ,"Grade":"NR" ,"AbsentLab":0 ,"AbsentLec":0 ,"TotalAbsent":0},'
      '{"id":"123","name":"java","YearWork":0,"MidTerm":0,"WrittenExam":0,"Total":0 ,"Grade":"NR" ,"AbsentLab":0 ,"AbsentLec":0 ,"TotalAbsent":0},'
      '{"id":"123","name":"java","YearWork":0,"MidTerm":0,"WrittenExam":0,"Total":0 ,"Grade":"NR" ,"AbsentLab":0 ,"AbsentLec":0 ,"TotalAbsent":0},'
      '{"id":"123","name":"java","YearWork":0,"MidTerm":0,"WrittenExam":0,"Total":0 ,"Grade":"NR" ,"AbsentLab":0 ,"AbsentLec":0 ,"TotalAbsent":0}]';

  bool toggle = true;
  List<JsonTableColumn> columns;

  @override
  void initState() {
    super.initState();
    columns = [
      JsonTableColumn("id", label: "id"),
      JsonTableColumn("name", label: "Course Name"),
      JsonTableColumn("YearWork", label: "Y-Work"),
      JsonTableColumn("MidTerm", label: "M-Term"),
      JsonTableColumn("WrittenExam", label: "FinalExam"),
      JsonTableColumn("Total", label: "Total"),
      JsonTableColumn("Grade", label: "Grade"),
      JsonTableColumn("AbsentLab", label: "AbsentLab"),
      JsonTableColumn("AbsentLec", label: "AbsentLec"),
      JsonTableColumn("TotalAbsent", label: "TotalAbsent"),
//      JsonTableColumn("age",
//          label: "Eligible to Vote", valueBuilder: eligibleToVote),
     // JsonTableColumn("email", label: "E-mail", defaultValue: "NA"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var json = jsonDecode(jsonSample);
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
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(
                  children: [
                    Container(
                        alignment: Alignment.center,

                        color: Colors.grey[350],
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Year ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22.0,

                                color: Colors.black,
                              ),
                            ),
                            DropDown(),
                          ],
                        )),
                  ],
                ),
              ]),
            SizedBox(
              height: 2,
            ),
            Table(border: TableBorder.all(color: Colors.black), children: [
              TableRow(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.grey[350],
                    child: Text(
                      "Frist Term ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,

                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            JsonTable(
              json,
              columns: columns,
              showColumnToggle: true,
            ),
            SizedBox(
              height: 30.0,
            ),
  Column(crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        " يحرم الطالب من دخول الامتحان النهائي الذي يتجاوز نسبه غيابه %25  ",
        textAlign: TextAlign.center,

        style: TextStyle(
          fontSize: 15.0,

          color: Colors.grey[800],
        ),
      ),Text(
        "The student is prohibited from entering the final examination whose absence rate exceeds 25%.",
        textAlign: TextAlign.center,

        style: TextStyle(
          fontSize: 15.0,

          color: Colors.grey[800],
        ))
    ],
  )
// da by3rd el jason
//            Text(
//              getPrettyJSONString(jsonSample),
//              style: TextStyle(fontSize: 13.0),
//            ),
          ],
        ),
      ),
      bottomSheet:Row(mainAxisAlignment: MainAxisAlignment.center
        ,crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Icon(Icons.more , color: Colors.grey,),
          Text(
            "   It is recommended to rotate the phone",
            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 15.0,

              color: Colors.grey[800],
            ),
          ),],
      ),
    );
  }

  String getPrettyJSONString(jsonObject) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String jsonString = encoder.convert(json.decode(jsonObject));
    return jsonString;
  }

  String formatDOB(value) {
    var dateTime = DateFormat("yyyy-MM-dd").parse(value.toString());
    return DateFormat("d MMM yyyy").format(dateTime);
  }

  String eligibleToVote(value) {
    if (value >= 18) {
      return "Yes";
    } else
      return "No";
  }
}
