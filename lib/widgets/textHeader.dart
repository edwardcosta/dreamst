import 'package:dreamst/constants/projectColors.dart';
import 'package:dreamst/constants/projectString.dart';
import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.fitWidth,
          child: DefaultTextStyle(
            style: TextStyle(
                fontSize: 112,
                fontFamily: 'Inter',
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = kYellow),
            child: const Text(kName,),
          ),
        ),
        const SizedBox(height: 5,),
        const FittedBox(
          fit: BoxFit.fitWidth,
          child: DefaultTextStyle(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold),
              child: Text(kSubName)),
        ),
      ],
    );
  }
}
