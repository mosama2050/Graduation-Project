import 'dart:typed_data';

import 'package:flutter/gestures.dart';
import 'package:v1/model/material.dart';
import 'package:v1/Screens/materialadd/materialCard.dart';
import 'package:v1/model/MaterialData.dart';
import 'package:flutter/material.dart';
import 'package:v1/ui/home.dart';

class MoviesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MoviesPageState();
  }
}

class _MoviesPageState extends State<MoviesPage> {
  final List<Movie> movies = MovieList.getMovies();
  final List<Movie> moviess = [];
  int counter = 0;

  Widget _buildMoviesList() {
    return Container(
      child: movies.length > 0
          ? ListView.builder(
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  onDismissed: (DismissDirection direction) {
                    setState(() {
                      moviess.add(movies.removeAt(index));

                      counter++;
                    });
                  },
                  secondaryBackground: Container(
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.green,
                  ),
                  dragStartBehavior: DragStartBehavior.down,
                  background: Container(),
                  child: MovieCard(movie: movies[index]),
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                );
              },
            )
          : Center(child: Text('No moviess')),
    );
  }

  Widget _buildMoviesList2() {
    return Container(
      child: moviess.length > 0
          ? ListView.builder(
              itemCount: moviess.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  onDismissed: (DismissDirection direction) {
                    setState(() {
                      movies.add(moviess.removeAt(index));
                      counter--;
                    });
                  },
                  secondaryBackground: Container(
                    child: Center(
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.red,
                  ),
                  dragStartBehavior: DragStartBehavior.down,
                  background: Container(),
                  child: MovieCard(movie: moviess[index]),
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                );
              },
            )
          : Center(child: Text('No moviess')),
    );
  }

  Widget _buildMoviesList3() {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    return
      Container(padding: EdgeInsets.all(30),
       child:
             Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
 Text("To Confirm Please Inter Your password " ,textAlign: TextAlign.center,

   style: TextStyle(
     fontSize: 22.0,
fontWeight: FontWeight.bold,
     color: Colors.black,
   ),),
              SizedBox(height: 50,),
              TextField(
                  obscureText: true,
                  style: style,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Password",
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                )
                ,SizedBox(height: 50,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color(0xff01A0C7),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DashBoard()),
                    );},
                    child: Text("Save",
                        textAlign: TextAlign.center,
                        style: style.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),SizedBox(height: 20,),
                Text(
                  "في حال عدم تاكيد التسجيل خلال قبل 12/11 سيتم تسجيل المواد المقترحه من قبل الكليه اجباريا ",
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 15.0,

                    color: Colors.grey[800],
                  ),
                ),Text(
                    "In the event that registration is not confirmed before 12/11, the materials proposed by the college will be compulsorily registered.",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 15.0,

                      color: Colors.grey[800],
                    ))
              ],
            )

          );


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "m",
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  backgroundColor: Colors.grey,
                  title: Text("Rgister Material "),
                ),
                body: SafeArea(
                    child: Column(children: <Widget>[
                  Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(
                            "MaxMum Hour",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "18",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Text(
                            "MiniMum Hour",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "9",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Text(
                            "Selected",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "$counter",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: (counter <= 5) ? Colors.green : Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ]),
                  PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: TabBar(
                      labelColor: Colors.black,

                      unselectedLabelColor: Colors.lightBlue[100],

                      indicatorWeight: 2,
                      indicatorColor: Colors.blue[100],
                      tabs: [
                        Tab(
                          icon: Icon(Icons.add),
                          text: 'ALL',
                        ),
                        Tab(
                          icon: Icon(Icons.select_all),
                          text: 'Marked',
                        ),
                        Tab(
                          icon: Icon(Icons.done),
                          text: 'Confirm',
                        )
                      ], // list of tabs
                    ),
                  ),
                  //TabBarView(children: [ImageList(),])
                  Expanded(
                    child: TabBarView(
                      children: [
                        _buildMoviesList(),
                        _buildMoviesList2(),
                         _buildMoviesList3(),
                         // class name
                      ],
                    ),
                  ),
                ])))));
  }
}
