// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';
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
        Builder(
          builder: (BuildContext context) => trends(),
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
