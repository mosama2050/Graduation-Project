import 'package:flutter/material.dart';
import 'package:v1/model/info.dart';

class infocard extends StatelessWidget {
  final info infoo;





  infocard({this.infoo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar( backgroundColor: Colors.blueAccent,radius: 40,
               child: Text(infoo.code.substring(0,3)+'\n '+ infoo.code.substring(3,6),style: TextStyle(color: Colors.white),),
            ),
            title: Text(infoo.name),
            subtitle: Text('Swip Left to get more info'),
            trailing: Text(infoo.Prerequisite),
          )
        ],
      ),
    );
  }
}