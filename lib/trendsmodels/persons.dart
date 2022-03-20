import 'package:flutter/material.dart';

class persons extends StatefulWidget {
  const persons({Key? key}) : super(key: key);

  @override
  State<persons> createState() => _personsState();
}

class _personsState extends State<persons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("persons"),
    );
  }
}
