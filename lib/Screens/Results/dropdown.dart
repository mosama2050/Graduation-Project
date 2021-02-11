
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
@override
DropDownWidget createState() => DropDownWidget();
}


class DropDownWidget extends State {
  List<String> spinnerItems = ['2020', '2019', '2018', '2017'];

  String dropdownValue = '2020';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style:
      TextStyle(color: Colors.white, fontSize: 22),
      underline: Container(
        height: 2,
        color: Colors.deepOrangeAccent,
      ),focusColor: Colors.white,
      onChanged: (String data) {
        setState(() {
          dropdownValue = data;
        });
      },
      items: spinnerItems.map<DropdownMenuItem<String>>(
              (String value) {
            return DropdownMenuItem<String>(
              value: value,

              child: Text("  "+value , style: TextStyle(fontSize: 22,color: Colors.deepOrangeAccent ),),
            );
          }).toList(),
    );
  }


}