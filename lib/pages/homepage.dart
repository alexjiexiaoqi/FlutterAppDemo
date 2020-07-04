import 'package:flutter/material.dart';
import 'package:usedcar2b/pages/minePage.dart';
import 'package:usedcar2b/pages/sellPage.dart';
import 'package:usedcar2b/pages/workStationPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _tabIndex = 0;
  var _pageList;
  PageController _pageController;

  @override
  void initState() {
    _pageController = new PageController();
    _pageList = [WorkStationPage(), SellPage(), MinePage()];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _pageList.length,
        itemBuilder: (context, index) => _pageList[index],
        onPageChanged: (index) {
          setState(() {
            this._tabIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _tabIndex,
          onTap: (index) => _pageController.jumpToPage(index),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text("工作台"),
              activeIcon: Image.asset(
                "resource/images/home_icon_down.png",
                width: 25,
                height: 25,
              ),
              icon: Image.asset(
                "resource/images/home_icon_up.png",
                width: 25,
                height: 25,
              ),
            ),
            BottomNavigationBarItem(
                title: Text("卖车"),
                activeIcon: Image.asset(
                  "resource/images/xiaoshouguanli_icon_down.png",
                  width: 25,
                  height: 25,
                ),
                icon: Image.asset(
                  "resource/images/xiaoshouguanli_icon_up.png",
                  width: 25,
                  height: 25,
                )),
            BottomNavigationBarItem(
                title: Text("我的"),
                activeIcon: Image.asset(
                  "resource/images/wo_icon_down.png",
                  width: 25,
                  height: 25,
                ),
                icon: Image.asset(
                  "resource/images/wo_icon_up.png",
                  width: 25,
                  height: 25,
                )),
          ],
          fixedColor: Colors.blue,
          selectedFontSize: 12),
    );
  }
}
