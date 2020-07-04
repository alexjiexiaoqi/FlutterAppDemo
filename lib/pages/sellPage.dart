import 'package:flutter/material.dart';

class SellPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SellState();
  }
}

class SellState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("卖车"),
      ),
      backgroundColor: Colors.yellow,
    );
  }
}
