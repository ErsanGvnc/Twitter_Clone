// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, unused_import

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:twitter_clone/explore.dart';
import 'package:twitter_clone/lists.dart';
import 'package:twitter_clone/mainpage.dart';
import 'package:twitter_clone/message.dart';
import 'package:twitter_clone/models/explodreLeft.dart';
import 'package:twitter_clone/models/mainLeft.dart';
import 'package:twitter_clone/models/messageLeft.dart';
import 'package:twitter_clone/models/profileLeft.dart';
import 'package:twitter_clone/notification.dart';
import 'package:twitter_clone/placemarks.dart';
import 'package:twitter_clone/profile.dart';
import 'package:twitter_clone/profile/plike.dart';
import 'package:twitter_clone/profile/pmedia.dart';
import 'package:twitter_clone/profile/ptweets.dart';
import 'package:twitter_clone/profile/ptweetsandanswers.dart';
import 'package:twitter_clone/trendpage.dart';
import 'package:twitter_clone/trendsmodels/images.dart';
import 'package:twitter_clone/trendsmodels/last.dart';
import 'package:twitter_clone/trendsmodels/persons.dart';
import 'package:twitter_clone/trendsmodels/popular.dart';
import 'package:twitter_clone/trendsmodels/videos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final ScrollController mainController = ScrollController();
final ScrollController leftMenuController = ScrollController();
final ScrollController TrendController = ScrollController();

String sayfa = "";
String notf = "all";
String profile = "ptweets";
String trend = "";

Widget mainPage() {
  switch (sayfa) {
    case "trend":
      return Trend();
    case "main":
      return MainPage();
    case "explore":
      return Explore();
    case "notification":
      return Notf();
    case "message":
      return Message();
    case "placemarks":
      return Placemarks();
    case "lists":
      return Lists();
    case "profile":
      return Profile();
    default:
      return MainPage();
  }
}

Widget leftPage() {
  switch (sayfa) {
    case "main":
      return Mainleft();
    case "explore":
      return Exploreleft();
    case "message":
      return Messageleft();
    case "profile":
      return Profileleft();
    default:
      return Mainleft();
  }
}

Widget profilebottom() {
  switch (profile) {
    case "ptweets":
      return ptweets();
    case "ptweetsandanswers":
      return ptweetsandanswers();
    case "pmedia":
      return pmedia();
    case "plike":
      return plike();
    default:
      return ptweets();
  }
}

Widget trends() {
  switch (trend) {
    case "popular":
      return popular();
    case "last":
      return last();
    case "persons":
      return persons();
    case "images":
      return images();
    case "videos":
      return videos();
    default:
      return popular();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //color: Colors.green,
              width: 250,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        controller: leftMenuController,
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 75),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: screenwidth,
                              decoration: BoxDecoration(
                                //color: Colors.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          sayfa = "main";
                                        });
                                      },
                                      child: Image.asset(
                                        "assets/images/splashLogo.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  sayfa = "main";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: screenwidth,
                                decoration: BoxDecoration(
                                  //color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.home,
                                        color: Colors.white,
                                        size: 27,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "Anasayfa",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  sayfa = "explore";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: screenwidth,
                                decoration: BoxDecoration(
                                  //color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.tag,
                                        color: Colors.white,
                                        size: 27,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "Keşfet",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  sayfa = "notification";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: screenwidth,
                                decoration: BoxDecoration(
                                  //color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.notifications_none,
                                        color: Colors.white,
                                        size: 27,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "Bildirimler",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  sayfa = "message";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: screenwidth,
                                decoration: BoxDecoration(
                                  //color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.mail_outline,
                                        color: Colors.white,
                                        size: 27,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "Mesajlar",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  sayfa = "placemarks";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: screenwidth,
                                decoration: BoxDecoration(
                                  //color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.bookmark_outline,
                                        color: Colors.white,
                                        size: 27,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "Yer İşaretleri",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  sayfa = "lists";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: screenwidth,
                                decoration: BoxDecoration(
                                  //color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.article_outlined,
                                        color: Colors.white,
                                        size: 27,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "Listeler",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  sayfa = "profile";
                                  profile = "ptweets";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: screenwidth,
                                decoration: BoxDecoration(
                                  //color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person_outline,
                                        color: Colors.white,
                                        size: 27,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "Profil",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: screenwidth,
                                decoration: BoxDecoration(
                                  //color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.pending_outlined,
                                        color: Colors.white,
                                        size: 27,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "Daha fazla",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            Container(
                              height: 50,
                              width: screenwidth,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Center(
                                  child: Text(
                                    "Tweetle",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 50,
                              width: screenwidth,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/sampleAvatar.png"),
                                    ),
                                    SizedBox(width: 15),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 102,
                                                  child: Text(
                                                    "newsstechno@gmail.com",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 3),
                                                Icon(
                                                  Icons.lock,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "@newsstechno",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                // color: Colors.amber,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.1,
                ),
              ),
              width: sayfa == "message" ? 400 : max(0, 600),
              // child: Trend(),
              child: Builder(
                builder: (BuildContext context) => mainPage(),
              ),
              // child: trend == "popular" ||
              //         trend == "last" ||
              //         trend == "persons" ||
              //         trend == "images" ||
              //         trend == "videos"
              //     ? Builder(
              //         builder: (BuildContext context) => trends(),
              //       )
              //     : Builder(
              //         builder: (BuildContext context) => mainPage(),
              //       ),
            ),
            SizedBox(
              width: sayfa == "message" ? 0 : 20,
            ),
            Container(
              // color: Colors.blue,
              width: sayfa == "message" ? 570 : 350,
              child: Builder(
                builder: (BuildContext context) => leftPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
