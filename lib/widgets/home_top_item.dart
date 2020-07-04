import 'package:flutter/material.dart';
import 'package:usedcar2b/common/style/style.dart';

class HomeTopItem extends StatefulWidget {
  var title;
  var value;
  var height;
  String unit;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeTopItemState();
  }

  HomeTopItem({Key key, this.height, this.title, this.value, this.unit})
      : super(key: key);
}

class HomeTopItemState extends State<HomeTopItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 120,
      child: Stack(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Text(widget.title, style: Constant.homeTopTitleText),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(widget.value.toString(), style: Constant.homeTopValueText),
                Text(widget.unit, style: Constant.homeTopUnitText)
              ],
            ),
          ),
        )
      ]),
    );
  }
}
