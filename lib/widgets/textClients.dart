import 'package:dreamst/constants/projectColors.dart';
import 'package:dreamst/constants/projectString.dart';
import 'package:flutter/material.dart';

class TextClients extends StatelessWidget {
  const TextClients({Key? key, required this.fontSize}) : super(key: key);

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Image.asset('assets/images/stars-t.png')),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            DefaultTextStyle(
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: fontSize + 5,
                    fontWeight: FontWeight.bold,
                    color: kYellow),
                child: Text(kClientTitle)),
            SizedBox(height: 10,),
            Image.asset('assets/images/clients.png')
          ],
        ),
      ),
    ]);
  }
}
