import 'package:dreamst/constants/projectColors.dart';
import 'package:dreamst/constants/projectString.dart';
import 'package:flutter/material.dart';

class TextInvestingInDreams extends StatelessWidget {
  const TextInvestingInDreams(
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
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, bottom: 5),
          child: DefaultTextStyle(
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: fontSize + 5,
                  color: kYellow,
                  fontWeight: FontWeight.bold),
              child: const Text(
                kInvestingInDreamsTitle,
                textAlign: TextAlign.right,
              )),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: DefaultTextStyle(
                    style: TextStyle(
                        fontFamily: 'PublicSans',
                        fontSize: fontSize,
                        color: kWhite),
                    child: const Text(
                      kInvestingInDreamsText,
                      textAlign: TextAlign.right,
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              VerticalDivider(
                width: verticalWidth,
                color: kYellow,
                thickness: thickness,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
