// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:twitter_clone/info/info.dart';
import 'package:twitter_clone/main.dart';

class Trend extends StatefulWidget {
  const Trend({Key? key}) : super(key: key);

  @override
  State<Trend> createState() => _TrendState();
}

class _TrendState extends State<Trend> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 50),
          itemCount: info.length,
          scrollDirection: Axis.vertical,
          controller: mainController,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                // color: Colors.amber,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.1,
                ),
              ),
              width: screenwidth,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                      radius: 24,
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  info[index]['name'].toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "@" + info[index]['account'].toString(),
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  " · " + info[index]['time'].toString(),
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: EdgeInsets.only(right: 25),
                              child: Text(
                                info[index]['message'].toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Visibility(
                              visible: info[index]['messagePic'] != null
                                  ? true
                                  : false,
                              child: Container(
                                child: Image.network(
                                  info[index]['messagePic'] != null
                                      ? info[index]['messagePic'].toString()
                                      : me[0]['profilePic'].toString(),
                                  fit: BoxFit.cover,
                                  width: max(300, 300),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              // color: Colors.red,
                              width: 450,
                              height: 30,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.maps_ugc_outlined,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "30",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.repeat,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "185",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "1.715",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.ios_share_outlined,
                                    color: Colors.grey,
                                    size: 20,
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
            );
          },
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.97),
            border: Border.all(
              width: 0.1,
              color: Colors.grey,
            ),
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
                  Icons.ac_unit,
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
