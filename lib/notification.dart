// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:twitter_clone/info/info.dart';
import 'package:twitter_clone/main.dart';

class Notf extends StatefulWidget {
  const Notf({Key? key}) : super(key: key);

  @override
  State<Notf> createState() => _NotfState();
}

class _NotfState extends State<Notf> {
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
                    border: Border(
                      bottom: BorderSide(
                        width: 0.2,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  width: screenwidth,
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              notf = "all";
                            });
                          },
                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                "Tümü",
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
                              notf = "me";
                            });
                          },
                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                "Bahsedenler",
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
                Container(
                  child: notf == "all"
                      ? Container(
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.1,
                            ),
                          ),
                          width: screenwidth,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                  size: 40,
                                ),
                                SizedBox(width: 10),
                                Flexible(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                info[index]['profilePic']
                                                    .toString(),
                                              ),
                                              radius: 18,
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.more_horiz,
                                              color: Colors.grey,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          info[index]['name'].toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Padding(
                                          padding: EdgeInsets.only(right: 25),
                                          child: Text(
                                            info[index]['message'].toString(),
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30),
                            Text(
                              "Burada görecek bir \nşey yok. Henüz...",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Birisi senden bahsettiği zaman, onu burada \nbulacaksın.",
                              style: TextStyle(
                                color: Colors.grey,
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
                  "Bildirimler",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
