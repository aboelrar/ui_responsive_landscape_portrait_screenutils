import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_responsive/utils/text_display.dart';

class HomeScreenItem extends StatelessWidget {
  var isPortrait;

  @override
  Widget build(BuildContext context) {
    isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [_getItemBody(), _getTitle(), _getImg()],
    );
  }

  _getItemBody() {
    Container imgItem = Container(
      alignment: Alignment.center,
      child: Image.asset(
        "assets/images/home_item.png",
        fit: BoxFit.fill,
      ),
    );

    return imgItem;
  }

  _getTitle() {
    Text title = const Text(
      "WINCH",
      style: TextStyle(color: Colors.white, fontSize: 18.0),
    );

    return Positioned(bottom: isPortrait ? 100.h : 150.h, child: title);
  }

  _getImg() {
    Image img = Image.asset("assets/images/car_wash.png");

    return Positioned(bottom: isPortrait ? 60.h : 100.h, child: img);
  }
}
