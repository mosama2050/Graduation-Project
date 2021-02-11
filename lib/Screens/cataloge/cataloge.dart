import 'package:flutter/material.dart';
import 'package:v1/Screens/cataloge/card.dart';
import 'package:v1/Screens/cataloge/onecataloge.dart';

import 'package:v1/model/info.dart';


class cataloge extends StatefulWidget {
  @override
  catalogestate createState() => new catalogestate();
}

class catalogestate extends State<cataloge> {
  List<info> items = info.getInfo();
   info inf ;





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Courses Cataloge '),
              centerTitle: true,
              backgroundColor: Colors.grey,
              leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);},),
            ),
            body:  Container(
              child: items.length > 0
                  ? ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    onDismissed: (DismissDirection direction) {
                      setState(() {


                        // items.removeAt(index) ;
                        _navigateToEmployee(context, items[index]);

                      });
                    },
                    secondaryBackground: Container(
                      child: Center(
                        child: Text(
                          '  More info ...',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      color: Colors.blue,
                    ),

                    background: Container(),
                    child: infocard(infoo: items[index]),
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                  );
                },
              )
                  : Center(child: Text('No Items')),
            )
        )
    );
  }

  void _navigateToEmployee(BuildContext context, info i) async {
    String result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => onecataloge(i)),
    );}

}
