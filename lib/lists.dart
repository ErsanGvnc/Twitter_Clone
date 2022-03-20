// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:twitter_clone/main.dart';

class Lists extends StatefulWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
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
                  // color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sabitlenen Listeler",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Flexible(
                              child: Text(
                                "Burada henüz hiçbir şey görünmüyor. Hızlıca erişmek istediğin favori Listelerini \nüste sabitleyebilirsin.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  // fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.1,
                    ),
                  ),
                  // color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yeni Listeleri Keşfet",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/listprofile.png",
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Özgür Demirtaş",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 8,
                                        backgroundImage: AssetImage(
                                            "assets/images/sampleAvatar.png"),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "@Ersan Güvenç",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "@ProfDemirtas",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 30,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Center(
                                    child: Text(
                                      "Takip et",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/listprofile2.png",
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "DEVS Society",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 8,
                                        backgroundImage: AssetImage(
                                            "assets/images/sampleAvatar.png"),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "@Ersan Güvenç",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "@DEVSSociety",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 30,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Center(
                                    child: Text(
                                      "Takip et",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/listprofile3.png",
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Aramizdaki Oyuncu",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 8,
                                        backgroundImage: AssetImage(
                                            "assets/images/sampleAvatar.png"),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "@Ersan Güvenç",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "@Aramizdakioyuncu",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 30,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Center(
                                    child: Text(
                                      "Takip et",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Listelerin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Flexible(
                              child: Text(
                                "Hiç Liste oluşturmadın veya takip etmedin. Oluşturduğun veya takip ettiğin \nListeler burada görünür.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  // fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35),
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
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Listeler",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "@newsstechno",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.article_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.more_horiz,
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
