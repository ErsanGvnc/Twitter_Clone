// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, camel_case_types, file_names

import 'package:flutter/material.dart';

class Messageleft extends StatefulWidget {
  const Messageleft({Key? key}) : super(key: key);

  @override
  State<Messageleft> createState() => _MessageleftState();
}

class _MessageleftState extends State<Messageleft> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        border: Border.all(
          color: Colors.grey,
          width: 0.1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 35, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Seçili bir mesajın yok",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Mevcut mesajlarından birini seç veya yeni \nbir mesaja başla.",
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
                      "Yeni mesaj",
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
          ],
        ),
      ),
    );
  }
}
