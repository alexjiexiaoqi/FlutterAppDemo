import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserNameInputText extends StatefulWidget {
  TextEditingController controller;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserNameInputState();
  }

  UserNameInputText({Key key, this.controller}) : super(key: key);
}

class UserNameInputState extends State<UserNameInputText> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: "用户名",
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        ),
        autofocus: true,
      ),
    );
  }
}
