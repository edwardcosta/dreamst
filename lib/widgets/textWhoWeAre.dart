import 'package:dreamst/constants/projectColors.dart';
import 'package:dreamst/constants/projectString.dart';
import 'package:flutter/material.dart';

class TextWhoWeAre extends StatelessWidget {
  const TextWhoWeAre(
      {Key? key,
      required this.fontSize,
      required this.thickness,
      required this.verticalWidth})
      : super(key: key);

  final double fontSize;
  final double thickness;
  final double verticalWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,bottom: 5),
          child: DefaultTextStyle(
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: fontSize + 5,
                  color: kYellow,
                  fontWeight: FontWeight.bold),
              child: const Text(kWhoWeAreTitle,)),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              VerticalDivider(
                width: verticalWidth,
                color: kYellow,
                thickness: thickness,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: DefaultTextStyle(
                    style: TextStyle(
                        fontFamily: 'PublicSans',
                        fontSize: fontSize,
                        color: kWhite),
                    child: const Text(
                      kWhoWeAreText,
                      textAlign: TextAlign.left,
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
