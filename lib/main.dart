
import 'package:flutter/material.dart';
import 'package:v1/Screens/news/card.dart';
import 'package:v1/ui/login.dart';


import 'package:v1/Constant/Constant.dart';
import 'package:v1/Screens/SplashScreen.dart';
import 'package:v1/Screens/ProfilePage.dart';


//void main(){
//  runApp(MaterialApp(
//    debugShowCheckedModeBanner: false,
//      home: AnimatedSplash(
//    imagePath: 'img/index.jpg',
//    home: login(),
//    duration: 25,
//    type: AnimatedSplashType.StaticDuration,
//
//  ),
//    routes: <String, WidgetBuilder>{
//    //SPLASH_SCREEN: (BuildContext context) => new MapScreen(),
//    PROFILE: (BuildContext context) => new ProfilePage(),
//  },));
//}

main() {



  runApp(  new MaterialApp
    (

      title: 'Fluter Profile Page',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryColor: Color(0xff0082CD),

          primaryColorDark: Color(0xff0082CD)),
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        //SPLASH_SCREEN: (BuildContext context) => new MapScreen(),
        PROFILE: (BuildContext context) => new ProfilePage(),
        LOGIN_SCREEN: (BuildContext context) => new login(),

        CARD : (BuildContext context) => new card(),
      },
    ),
  );
}
