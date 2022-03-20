// ignore_for_file: camel_case_types, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:twitter_clone/info/info.dart';
import 'package:twitter_clone/main.dart';

class persons extends StatefulWidget {
  const persons({Key? key}) : super(key: key);

  @override
  State<persons> createState() => _personsState();
}

class _personsState extends State<persons> {
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 100),
                        Text(
                          '"#kartatili" için \nsonuç bulunamadı',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Aradığın terim herhangi bir sonuç getirmedi. Terimi yanlış yazmış olabilirsin veya Arama ayarların seni olası hassas içeriklerden koruyor olabilir.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
