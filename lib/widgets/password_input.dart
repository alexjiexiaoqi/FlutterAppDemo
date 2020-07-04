import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordInputText extends StatefulWidget {
  TextEditingController controller;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PasswordInputState();
  }

  PasswordInputText({Key key, this.controller}) : super(key: key);
}

class PasswordInputState extends State<PasswordInputText> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: "密码",
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        ),
        obscureText: true,
      ),
    );
  }
}
