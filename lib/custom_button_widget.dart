import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? text;
  VoidCallback? onTap;
  CustomButton(
      {required this.text,
      this.onTap,
      this.backGroundColor,
      this.textColor,
      this.width,
      this.height,
      required this.outColor,
      this.fontSize,
      this.fontWeight});
  double? fontSize = 19;
  dynamic fontWeight;
  Color? backGroundColor;
  Color? textColor;
  double? width = double.infinity;
  double? height;
  Color outColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        child: Positioned(
          top: 50,
          child: Container(
            decoration: BoxDecoration(
              color: backGroundColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: outColor,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                '$text',
                style: TextStyle(
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
