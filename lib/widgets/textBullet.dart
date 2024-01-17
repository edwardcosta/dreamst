import 'package:dreamst/constants/projectColors.dart';
import 'package:dreamst/constants/projectString.dart';
import 'package:flutter/material.dart';

class TextBullet extends StatelessWidget {
  const TextBullet({Key? key, required this.fontSize, required this.service})
      : super(key: key);

  final double fontSize;
  final String service;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DefaultTextStyle(
            style: TextStyle(
                fontFamily: 'PublicSans', color: kWhite, fontSize: fontSize),
            child: const Text(kServiceBullet)),
        const SizedBox(width: 8,),
        Flexible(
          child: DefaultTextStyle(
              style: TextStyle(
                  fontFamily: 'PublicSans', color: kWhite, fontSize: fontSize),
              child: Text(service)),
        ),
      ],
    );
  }
}
