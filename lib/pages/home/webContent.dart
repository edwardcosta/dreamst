import 'package:dreamst/widgets/textWhoWeAre.dart';
import 'package:dreamst/widgets/textHeader.dart';
import 'package:flutter/material.dart';

class WebContentHome extends StatefulWidget {
  const WebContentHome({Key? key}) : super(key: key);

  @override
  State<WebContentHome> createState() => _WebContentHomeState();
}

class _WebContentHomeState extends State<WebContentHome> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 1200,
        ),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.9,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [TextHeader(), TextWhoWeAre(fontSize: 28,thickness: 6,verticalWidth: 20,)],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Image.asset('assets/images/whale.png')
                  /*LottieBuilder.asset(
                  '50562-circle-square-pattern.zip',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.height * 0.45,
                  height: MediaQuery.of(context).size.height * 0.45,
                ),*/
              ],
            ))
          ],
        ),
      ),
    );
  }
}
