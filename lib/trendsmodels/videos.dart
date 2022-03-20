// ignore_for_file: camel_case_types, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:twitter_clone/info/info.dart';
import 'package:twitter_clone/main.dart';

class videos extends StatefulWidget {
  const videos({Key? key}) : super(key: key);

  @override
  State<videos> createState() => _videosState();
}

class _videosState extends State<videos> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 101),
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
            // color: Colors.red,
            border: Border.all(
              width: 0.3,
              color: Colors.grey,
            ),
          ),
          width: screenwidth,
          height: 101,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 25),
                    Flexible(
                      child: Container(
                        height: 50,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                          child: Container(
                            // color: Colors.blue,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(32, 35, 39, 1),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                hintText: "Twitter'da Ara",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  width: screenwidth,
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              trend = "popular";
                            });
                          },
                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                "Popüler",
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
                              trend = "last";
                            });
                          },
                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                "En Son",
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
                              trend = "persons";
                            });
                          },
                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                "Kişiler",
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
                              trend = "images";
                            });
                          },
                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                "Fotoğraflar",
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
                              trend = "videos";
                            });
                          },
                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                "Videolar",
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
