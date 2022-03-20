import 'package:flutter/material.dart';

class videos extends StatefulWidget {
  const videos({Key? key}) : super(key: key);

  @override
  State<videos> createState() => _videosState();
}

class _videosState extends State<videos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("videos"),
    );
  }
}
