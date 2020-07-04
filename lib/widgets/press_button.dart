import 'package:flutter/material.dart';

class PressButton extends StatefulWidget {
  String title;
  VoidCallback callback;
  PressButton({
    Key key,
    // this.hintColor,
    @required this.title,
    this.callback,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PressButtonState();
  }
}

class PressButtonState extends State<PressButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
        child: Text(widget.title),
        textColor: Colors.white,
        color: Color(0xFFF85D00),
        onPressed: () {
          widget.callback.call();
        });
  }
}
