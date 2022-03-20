// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ptweetsandanswers extends StatefulWidget {
  const ptweetsandanswers({Key? key}) : super(key: key);

  @override
  State<ptweetsandanswers> createState() => _ptweetsandanswersState();
}

class _ptweetsandanswersState extends State<ptweetsandanswers> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    Chipler() {
      return Chip(
        elevation: 20,
        padding: EdgeInsets.all(8),
        backgroundColor: Colors.black,
        label: Row(
          children: [
            Text(
              'Bilim',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(width: 25),
            Icon(
              Icons.add,
              color: Colors.blue,
            ),
            SizedBox(width: 5),
            Container(
              color: Colors.grey,
              width: 1,
              height: 20,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.close,
              color: Colors.grey,
            ),
          ],
        ),
      );
    }

    ChipColumn() {
      return Column(
        children: [
          Chipler(),
          SizedBox(height: 7),
          Chipler(),
          SizedBox(height: 7),
          Chipler(),
          SizedBox(height: 7),
          Chipler(),
          SizedBox(height: 7),
          Chipler(),
        ],
      );
    }

    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        border: Border.all(
          color: Colors.grey,
          width: 0.1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              // color: Colors.amber,
              border: Border(
                top: BorderSide(width: 0.1, color: Colors.grey),
                bottom: BorderSide(width: 0.3, color: Colors.grey),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kimi takip etmeli",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/sampleAvatar.png"),
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
                                SizedBox(height: 3),
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
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 50),
                            Flexible(
                              child: Text(
                                "Akademisyen,15 yıl ABD,Şimdi @sabanciu Finans Kürsü Başkanı.Uzmanlık: Finans. İlgi-Alanları: Teknoloji-Uzay-Tıp. For Tweets in English @OzgurinEnglish",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/sampleAvatar.png"),
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
                                SizedBox(height: 3),
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
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 50),
                            Flexible(
                              child: Text(
                                "Akademisyen,15 yıl ABD,Şimdi @sabanciu Finans Kürsü Başkanı.Uzmanlık: Finans. İlgi-Alanları: Teknoloji-Uzay-Tıp. For Tweets in English @OzgurinEnglish",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/sampleAvatar.png"),
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
                                SizedBox(height: 3),
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
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 50),
                            Flexible(
                              child: Text(
                                "Akademisyen,15 yıl ABD,Şimdi @sabanciu Finans Kürsü Başkanı.Uzmanlık: Finans. İlgi-Alanları: Teknoloji-Uzay-Tıp. For Tweets in English @OzgurinEnglish",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Takip edilebilecek Konular",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Takip ettiğin Konular hakkındaki Tweetler Ana Sayfa zaman akışında görünür",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.amber,
                  // height: 250,
                  width: screenwidth,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                      child: Row(
                        children: [
                          ChipColumn(),
                          SizedBox(width: 7),
                          ChipColumn(),
                          SizedBox(width: 7),
                          ChipColumn(),
                          SizedBox(width: 7),
                          ChipColumn(),
                          SizedBox(width: 7),
                          ChipColumn(),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenwidth,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                    child: Text(
                      "Daha Fazla Konu",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
