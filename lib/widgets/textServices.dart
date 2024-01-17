import 'package:dreamst/constants/projectColors.dart';
import 'package:dreamst/constants/projectString.dart';
import 'package:dreamst/widgets/textBullet.dart';
import 'package:flutter/material.dart';

class TextServices extends StatelessWidget {
  const TextServices(
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
    return Stack(children: [
      Positioned(
          right: 0,
          top: 20,
          bottom: 0,
          child: Image.asset(
            'assets/images/stars-l.png',
            fit: BoxFit.fitHeight,
          )),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 5),
            child: DefaultTextStyle(
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: fontSize + 5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                child: const Text(
                  kHelpClientTitle,
                  textAlign: TextAlign.right,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: thickness,
              width: MediaQuery.of(context).size.width * 0.50,
              color: kYellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 5),
                  child: DefaultTextStyle(
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: fontSize + 5,
                          color: kYellow,
                          fontWeight: FontWeight.bold),
                      child: const Text(
                        kServiceTitle,
                      )),
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
                        child: Column(
                          children: [
                            TextBullet(fontSize: fontSize, service: kService1),
                            TextBullet(fontSize: fontSize, service: kService2),
                            TextBullet(fontSize: fontSize, service: kService3),
                            TextBullet(fontSize: fontSize, service: kService4),
                            TextBullet(fontSize: fontSize, service: kService5),
                            TextBullet(fontSize: fontSize, service: kService6),
                            TextBullet(fontSize: fontSize, service: kService7),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 5),
            child: DefaultTextStyle(
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: fontSize + 5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                child: const Text(
                  kPersonalizationTitle,
                  textAlign: TextAlign.left,
                )),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                height: thickness,
                width: MediaQuery.of(context).size.width * 0.50,
                color: kYellow,
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
