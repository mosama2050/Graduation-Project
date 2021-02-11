import 'package:flutter/material.dart';
import 'package:v1/model/employee.dart';
import 'package:v1/model/info.dart';
import 'package:v1/model/info.dart';
import 'package:v1/model/info.dart';
import 'package:v1/util/database_helper.dart';

class onecataloge extends StatefulWidget {

    info inf ;
    onecataloge(this.inf);

  @override
  State<StatefulWidget> createState() => new _onecatalogeState();
}

class _onecatalogeState extends State<onecataloge> {


  TextEditingController _yearController;
  TextEditingController _nameController;
  TextEditingController _departmentController;
  TextEditingController _termController;

  String id ;


  @override
  void initState() {
    super.initState();
 id = widget.inf.code;
    _yearController = new TextEditingController(text: widget.inf.code);
    _nameController = new TextEditingController(text: widget.inf.name);
    _departmentController = new TextEditingController(text: widget.inf.Prerequisite);
    _termController = new TextEditingController(text: widget.inf.discreption);

  }

  @override
  Widget build(BuildContext context) {
    bool tf = false;
    return Scaffold(
      appBar: AppBar(title: Text('Matirial Full Info '),
        backgroundColor: Colors.grey,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);},),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            CircleAvatar( backgroundColor: Colors.blueAccent,radius: 50,
              child: Text(id ,style: TextStyle(color: Colors.white),),
            ),

            TextField(
               controller: _yearController,
              decoration: InputDecoration(labelText: 'ID'),
              enabled: tf,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
              enabled: tf,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            TextField(
              controller: _departmentController,
              decoration: InputDecoration(labelText: 'Prerequisite'),
              enabled: tf,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            TextField( keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: _termController,
              decoration: InputDecoration(labelText: 'discreption'),
              enabled: tf,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),

            Padding(padding: new EdgeInsets.all(15.0)),
            RaisedButton(
              child:  Text('back')  ,

              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pop(context);
              }),
          ],
        ),
      ),
    );
  }
}
