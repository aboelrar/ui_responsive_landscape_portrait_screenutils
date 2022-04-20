import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AppTextDisplay extends StatelessWidget {
  final Color color;
  final Color? backgroundColor;

  final double fontSize;
  final String? text;
  final String? translation;
  final FontWeight fontWeight;
  final String? fontFamily;
  late TextStyle style;
  final TextAlign textAlign;
  final bool isUpper;
  final bool softWrap;
  final int maxLines;
  final TextOverflow overflow;
  final TextDecoration? decoration;

  AppTextDisplay(
      {Key? key,
      this.color = Colors.black,
      this.backgroundColor,
      this.fontSize = 23.0,
      this.text,
      this.fontFamily = "Gotham_Rounded",
      this.decoration,
      this.translation,
      this.overflow = TextOverflow.ellipsis,
      style,
      this.softWrap = false,
      this.maxLines = 3,
      this.textAlign = TextAlign.center,
      this.fontWeight = FontWeight.normal,
      this.isUpper = false})
      : super(key: key) {
    if (style != null) {
      double? fontSize = style.fontSize;
      this.style = style!.copyWith(fontSize: fontSize);
    } else {
      this.style = TextStyle(
          backgroundColor: backgroundColor,
          decoration: decoration,
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight);
    }
  }

  // void initState() {
  //   super.initState();
  //   getSettings();
  // }

  String font = 'Gotham_Rounded';

  // getSettings() async {
  //   String f = await keyboardSettingsData.getFont();
  //   if (f != font) {
  //     setState(() {
  //       font = f;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // getSettings();
    return Text((text)!,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        softWrap: softWrap,
        style: TextStyle(
            backgroundColor: backgroundColor,
            decoration: decoration,
            color: color,
            fontSize: fontSize.sp,
            fontFamily: fontFamily ?? font,
            fontWeight: fontWeight));
  }
}
