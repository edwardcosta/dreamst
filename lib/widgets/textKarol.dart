import 'package:dreamst/constants/projectColors.dart';
import 'package:dreamst/constants/projectString.dart';
import 'package:flutter/material.dart';

class TextKarol extends StatelessWidget {
  const TextKarol({Key? key,required this.fontSize, required this.thickness}) : super(key: key);

  final double fontSize;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextStyle(
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: kYellow,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize + 5),
                    child: const Text(
                      kKarolTitle,
                      textAlign: TextAlign.left,
                    )),
                const SizedBox(
                  height: 10,
                ),
                DefaultTextStyle(
                    style: TextStyle(
                      fontFamily: 'PublicSans',
                      fontSize: fontSize,
                      color: kWhite,
                    ),
                    child: const Text(
                      kKarolText,
                      textAlign: TextAlign.left,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: thickness,
                  color: kYellow,
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Image.asset(
                'assets/images/karol.png',
              )),
        ],
      ),
    );
  }
}
