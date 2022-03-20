// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:twitter_clone/main.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 50),
          itemCount: 1,
          scrollDirection: Axis.vertical,
          controller: mainController,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    border: Border(
                      bottom: BorderSide(
                        width: 0.2,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  width: screenwidth,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/sampleAvatar.png"),
                          radius: 24,
                        ),
                        SizedBox(width: 15),
                        Flexible(
                          child: Container(
                            // color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // color: Colors.amber,
                                  width: 520,
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Neler oluyor?",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  // color: Colors.red,
                                  width: screenwidth,
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.image_outlined,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.gif_box_outlined,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.equalizer_outlined,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.tag_faces_outlined,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.pending_actions_outlined,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.location_pin,
                                        color: Colors.blue,
                                      ),
                                      Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              20, 10, 20, 10),
                                          child: Text(
                                            "Tweetle",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenwidth <= 690 ? 50 : 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Image.asset("assets/images/mainpage.png"),
                      SizedBox(height: 25),
                      Text(
                        "Zaman akışına hoş \ngeldin!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Burası Twitter'da neler olup bittiğini görebileceğin en iyi yer. Ne kadar fazla kişiyi ve ilgi alanını takip edersen zaman akışın o kadar iyi olur. Başlamana yardımcı olmak için sana birkaç öneride bulunacağız.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                          child: Text(
                            "Başlayalım",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.97),
            // border: Border.all(
            //   width: 0.1,
            //   color: Colors.grey,
            // ),
          ),
          width: screenwidth,
          height: 50,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Anasayfa",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.auto_awesome_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
