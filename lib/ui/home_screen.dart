import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_screen_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _getBody(context),
    );
  }

  _getBody(context) {
    var safePadding = MediaQuery.of(context).padding.top;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    SizedBox logoImg = SizedBox(
      height: 100.h,
      width: 100.w,
      child: Image.asset(
        "assets/images/app_logo.png",
      ),
    );

    Container title = Container(
      alignment: Alignment.center,
      height: 50.h,
      child: FittedBox(
        child: Text(
          "How We Can Help You Today?",
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
        ),
      ),
    );

    Container homeList = Container(
        height: 712.h - 50.h - safePadding,
        child: GridView.builder(
          padding: EdgeInsets.symmetric(
              horizontal: 20.w, vertical: isPortrait ? 0 : 35.h),
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: .6, crossAxisCount: isPortrait ? 2 : 4),
          itemBuilder: (BuildContext context, int index) {
            return HomeScreenItem();
          },
        ));

    Column homeColumn = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [logoImg, title, homeList],
    );

    return SafeArea(child: homeColumn);
  }
}
