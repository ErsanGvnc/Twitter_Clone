// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:twitter_clone/main.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Color.fromRGBO(51, 54, 57, 1),
                          height: 200,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            // color: Colors.amber,
                            // height: 200,
                            width: screenwidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 85),
                                Row(
                                  children: [
                                    Text(
                                      "newsstechno@gmail.com",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.lock,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "@newsstechno",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.place_outlined,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "İstanbul, Türkiye",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.calendar_month_outlined,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      "Temmuz 2020 tarihinde katıldı",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Takip edilen",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "0",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Takipçi",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    profile = "ptweets";
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "Tweetler",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    profile = "ptweetsandanswers";
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "Tweetler ve yanıtlar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    profile = "pmedia";
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "Medya",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    profile = "plike";
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "Beğeni",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Builder(
                          builder: (BuildContext context) => profilebottom(),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      top: 215,
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                            child: Text(
                              "Profili ayarla",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 125,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage:
                            AssetImage("assets/images/sampleAvatar.png"),
                      ),
                    ),
                  ],
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "newsstechno@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                    Text(
                      "0 Tweet",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
