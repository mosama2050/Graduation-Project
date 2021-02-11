import 'package:flutter/material.dart';
import 'package:v1/Screens/news/matchcard.dart';
import 'package:v1/Screens/news/showmodelbtuttoncustom.dart';

class card extends StatefulWidget {
  @override
  cardstate createState() => cardstate();
}

class cardstate extends State<card> {
  List<Widget> cardlist = List();
  List<MatchCard> card = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    card.add(MatchCard(
        "Ford",
        "Currently avilable ",
        "http://www.pngmart.com/files/10/Audi-PNG-Clipart.png",
        35,
        5,
        30,
        "bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla "));
    card.add(MatchCard(
        "Volvo",
        "Currently avilable ",
        "http://www.pngmart.com/files/10/White-Audi-PNG-Image.png",
        50,
        3,
        30,
        "bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla "));
    card.add(MatchCard(
        "BMW",
        "Currently avilable ",
        "http://www.pngmart.com/files/10/Audi-Transparent-PNG.png",
        60,
        2,
        30,
        "bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla "));
    card.add(MatchCard(
        "Audi",
        "Currently avilable ",
        "http://www.pngmart.com/files/10/White-Audi-Transparent-PNG.png",
        30,
        4,
        30,
        "bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla "));
  }

  void _removecard(index) {
    setState(() {
      card.removeAt(index);
      cardlist.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    cardlist.clear();
    card.asMap().forEach((index, c) {
      cardlist.add(ConstrainedBox(
        constraints:
            BoxConstraints(minWidth: 100, minHeight: 100, maxHeight: 400),
        child: Container(
          child: Draggable(
              onDragEnd: (details) {
                if (details.offset.dx > 150 || details.offset.dx < -150) {
                  _removecard(index);
                }
              },
              child: Container(
                // main card container
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 231, 234, 238),
                          spreadRadius: 2,
                          blurRadius: 5)
                    ]),
                child: GestureDetector(
                  onTap: () {
                    _showcarddetaile(context, c);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  c.name,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  c.avilable,
                                  style: TextStyle(
                                      color: Colors.lightGreen,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            c.imgsrc,
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "\$${c.price}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "/day",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.person),
                                    Text(
                                      "${c.people}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              feedback: Container(
                //draging
                width: MediaQuery.of(context).size.width - 40,
                height: 500,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    color: Colors.white,
                    child: Image.network(
                      c.imgsrc,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )),
        ),
      ));
    });

    return Center(
      child: Stack(
        children: cardlist,
      ),
    );
  }
}

void _showcarddetaile(context, MatchCard aa) {
  showModalBottomSheetcustom(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: IconButton(
                            icon: Icon(Icons.close , size: 35,),
                            color: Colors.black,
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                aa.name,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                aa.avilable,
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.not_interested,
                              color: Colors.red,
                            ),
                            Icon(Icons.bookmark_border, color: Colors.green)
                          ],
                        )
                      ],
                    ),
                  ),
                  Image.network(
                    aa.imgsrc,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "\$${aa.price}",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "/day",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.person),
                            Text(
                              "${aa.people}",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(aa.desc),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: RaisedButton.icon(
                          onPressed: () {},
                          color: Colors.blueGrey,
                          label :Text(
                            "Go To The Web Site",
                            style: TextStyle(
                              color: Colors.white,
                            ),

                          ),
                          icon: Icon(Icons.settings_ethernet ,color: Colors.deepOrangeAccent   ,textDirection: TextDirection.rtl,),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
