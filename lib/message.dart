// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:twitter_clone/main.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
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
                    padding: EdgeInsets.fromLTRB(30, 35, 30, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mesaj gönder, mesaj \nal",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Direkt Mesajlar, sen ve Twitter'daki diğer kişiler arasında gerçekleşen özel sohbetlerdir. Tweetleri, medyaları ve daha fazlasını paylaşabilirsin!",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: 175,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Sohbet başlat",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
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
              children: [
                Text(
                  "Mesajlar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.mark_email_read_outlined,
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
