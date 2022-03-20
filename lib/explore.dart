// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:twitter_clone/main.dart';
import 'package:twitter_clone/trendpage.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return sayfa == "trend"
        ? Trend()
        : Stack(
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
                        width: screenwidth,
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            colorFilter: ColorFilter.srgbToLinearGamma(),
                            image: AssetImage("assets/images/explore.jpg"),
                            fit: BoxFit.cover,
                          ),
                          // color: Colors.amber,
                          border: Border(
                            bottom: BorderSide(
                              width: 0.2,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Covid-19 · CANLI",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Türkiye'de Covid-19 ile ilgili güncel gelişmeler",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: screenwidth,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.2,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "İlgini çekebilecek gündemler",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    sayfa = "trend";
                                  });
                                },
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Türkiye konumunda gündemde",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Icon(
                                            Icons.more_horiz,
                                            color: Colors.grey,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                      Text(
                                        "#kartatili",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "8.766 Tweet",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    sayfa = "trend";
                                  });
                                },
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text(
                                      //       "Türkiye konumunda gündemde",
                                      //       style: TextStyle(
                                      //         color: Colors.grey,
                                      //         fontSize: 13,
                                      //       ),
                                      //     ),
                                      //     Icon(
                                      //       Icons.more_horiz,
                                      //       color: Colors.grey,
                                      //     )
                                      //   ],
                                      // ),
                                      Text(
                                        "#devssociety",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Devssociety uygulamasını indirin, yazılım dünyasına dalış yapın.",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.code,
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                          Text(
                                            "Devssociety sponsorluğunda",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    sayfa = "trend";
                                  });
                                },
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Sadece Twitter'da · Gündemdekiler",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Icon(
                                            Icons.more_horiz,
                                            color: Colors.grey,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                      Text(
                                        "#flutter",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "1.87 Mn Tweet",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    sayfa = "trend";
                                  });
                                },
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Müzik · Gündemdekiler",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Icon(
                                            Icons.more_horiz,
                                            color: Colors.grey,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                      Text(
                                        "#Royals",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "56.5 B Tweet",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    sayfa = "trend";
                                  });
                                },
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Global · Gündemdekiler",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Icon(
                                            Icons.more_horiz,
                                            color: Colors.grey,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                      Text(
                                        "#DEVSfest",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "3.67 Mn Tweet",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    sayfa = "trend";
                                  });
                                },
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "İstanbul konumunda gündemde",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Icon(
                                            Icons.more_horiz,
                                            color: Colors.grey,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                      Text(
                                        "#kadimşehir",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "8.548 Tweet",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 25),
                              Container(
                                child: Text(
                                  "Daha fazla göster",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
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
                        Icons.settings_outlined,
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
