// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';

class plike extends StatefulWidget {
  const plike({Key? key}) : super(key: key);

  @override
  State<plike> createState() => _plikeState();
}

class _plikeState extends State<plike> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Container(
      width: screenwidth,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.3,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              Text(
                "Henüz hiç beğenin \nyok",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Ona biraz sevgi göstermek için herhangi bir Tweet \nüzerindeki kalbe dokun. Dokunduğun zaman, \nburada görünür.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
