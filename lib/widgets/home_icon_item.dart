import 'package:flutter/material.dart';
import 'package:usedcar2b/common/style/style.dart';

class IconItem extends StatelessWidget {
  String imagepath;
  String bottomtext;
  bool isShowDot;
  bool isShowCount;
  int showCount;
  IconItem(
      {Key key,
      this.imagepath,
      this.bottomtext,
      this.isShowDot,
      this.isShowCount,
      this.showCount})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          isShowCount
              ? Align(
                  alignment: Alignment.topRight,
                  child: ClipOval(
                    child: Container(
                      width: 16,
                      height: 16,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text(
                        showCount.toString(),
                        style: Constant.iconItemTopText,
                      ),
                    ),
                  ))
              : Container(),
          isShowDot
              ? Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    "resource/images/news_tip_red.png",
                    width: 16,
                    height: 16,
                  ),
                )
              : Container(),
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                imagepath,
                width: 36,
                height: 36,
              )),
          Text(bottomtext)
        ],
      ),
    );
  }
}
