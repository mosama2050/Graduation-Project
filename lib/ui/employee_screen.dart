import 'package:flutter/material.dart';
import 'package:v1/model/employee.dart';
import 'package:v1/util/database_helper.dart';

class EmployeeScreen extends StatefulWidget {
  final Employee employee;
  EmployeeScreen(this.employee);

  @override
  State<StatefulWidget> createState() => new _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  DatabaseHelper db = new DatabaseHelper();

  TextEditingController _yearController;
  TextEditingController _nameController;
  TextEditingController _departmentController;
  TextEditingController _termController;
  TextEditingController _descriptionController;


  @override
  void initState() {
    super.initState();

    _yearController = new TextEditingController(text: widget.employee.year);
    _nameController = new TextEditingController(text: widget.employee.name);
    _departmentController = new TextEditingController(text: widget.employee.department);
    _termController = new TextEditingController(text: widget.employee.term);
    _descriptionController = new TextEditingController(text: widget.employee.description);
  }

  @override
  Widget build(BuildContext context) {
    bool tf = true;
    return Scaffold(
      appBar: AppBar(title: Text('Matirial Full Info '),
      leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);},),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Icon(Icons.folder ,size: 100,color: Colors.blue,),

            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
              enabled: tf,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            TextField(
              controller: _yearController,
              decoration: InputDecoration(labelText: 'year'),
              enabled: tf,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            TextField(
              controller: _departmentController,
              decoration: InputDecoration(labelText: 'Dept'),
              enabled: tf,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            TextField(
              controller: _termController,
              decoration: InputDecoration(labelText: 'term'),
              enabled: tf,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
              enabled: tf,
            ),
            Padding(padding: new EdgeInsets.all(15.0)),
            RaisedButton(
              child: (widget.employee.id != null) ? Text('download') : Text('Add'),
              color: Colors.blueAccent,
              onPressed: () {
                if (widget.employee.id != null) {
                  tf=false;
                  db.updateEmployee(Employee.fromMap({
                    'id': widget.employee.id,
                    'age': _yearController.text,
                    'name': _nameController.text,
                    'department': _departmentController.text,
                    'term': _termController.text,
                    'title': _descriptionController.text

                  })).then((_) {
                    Navigator.pop(context, 'update');
                  });
                }else {
                  tf=false;
                  db.saveEmployee(Employee(
                    _yearController.text,
                    _nameController.text,
                    _departmentController.text,
                    _termController.text,
                    _descriptionController.text
                  )).then((_) {
                    Navigator.pop(context, 'save');
                  }).then((_) {print("a7a");});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
