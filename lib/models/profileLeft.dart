// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:twitter_clone/main.dart';

class Profileleft extends StatefulWidget {
  const Profileleft({Key? key}) : super(key: key);

  @override
  State<Profileleft> createState() => _ProfileleftState();
}

class _ProfileleftState extends State<Profileleft> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 55),
            scrollDirection: Axis.vertical,
            controller: TrendController,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: screenwidth,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(22, 24, 28, 1),
                      borderRadius: BorderRadius.circular(20),
                      // border: Border(
                      //   bottom: BorderSide(
                      //     width: 0.2,
                      //     color: Colors.grey,
                      //   ),
                      // ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bunları beğenebilirsin",
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
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/sampleAvatar.png"),
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
                                    Text(
                                      "@ProfDemirtas",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
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
                          SizedBox(height: 20),
                          Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/sampleAvatar.png"),
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
                                    Text(
                                      "@DEVSSociety",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
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
                          SizedBox(height: 20),
                          Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/sampleAvatar.png"),
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
                                    Text(
                                      "@Aramizdakioyuncu",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: screenwidth,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(22, 24, 28, 1),
                      borderRadius: BorderRadius.circular(20),
                      // border: Border(
                      //   bottom: BorderSide(
                      //     width: 0.2,
                      //     color: Colors.grey,
                      //   ),
                      // ),
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
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(height: 20),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(height: 15),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(height: 15),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(height: 15),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(height: 15),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Hizmet Şartları",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Gizlilik Politikası",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Çerez Politikası",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "İletişim bilgileri",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Erişilebilirlik",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Reklam bilgisi",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Daha fazla",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.grey,
                                size: 15,
                              ),
                              SizedBox(width: 15),
                              Text(
                                "© 2022 Twitter, Inc.",
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
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            width: screenwidth,
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
        ],
      ),
    );
  }
}
