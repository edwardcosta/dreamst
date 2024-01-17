import 'package:dreamst/constants/projectColors.dart';
import 'package:dreamst/widgets/textClients.dart';
import 'package:dreamst/widgets/textEduardo.dart';
import 'package:dreamst/widgets/textInvestingInDreams.dart';
import 'package:dreamst/widgets/textKarol.dart';
import 'package:dreamst/widgets/textServices.dart';
import 'package:dreamst/widgets/textWhoWeAre.dart';
import 'package:dreamst/widgets/textHeader.dart';
import 'package:flutter/material.dart';

class MobileContent extends StatefulWidget {
  const MobileContent({Key? key}) : super(key: key);

  @override
  State<MobileContent> createState() => _MobileContentState();
}

class _MobileContentState extends State<MobileContent> {
  double fontSize = 10;
  double thickness = 4;
  double verticalWidth = 10;

  void verifyScreenSize(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    if(width < 412){
      fontSize = 10;
      thickness = 4;
      verticalWidth = 10;
    } else if(width >= 412 && width < 512){
      fontSize = 15;
      thickness = 5;
      verticalWidth = 12;
    } else if(width >= 512){
      fontSize = 18;
      thickness = 6;
      verticalWidth = 14;
    }
  }

  @override
  Widget build(BuildContext context) {
    verifyScreenSize(context);
    return RawScrollbar(
      thumbColor: kWhite,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('assets/images/constelation.png'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextHeader(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: TextWhoWeAre(
                        fontSize: fontSize,
                        thickness: thickness,
                        verticalWidth: verticalWidth,
                      )),
                  Expanded(
                      flex: 2,
                      child: Image.asset(
                        'assets/images/whale.png',
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Image.asset('assets/images/stars-r.png'),
                        Image.asset(
                          'assets/images/world-r.png',
                          scale: 10,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: TextInvestingInDreams(
                          fontSize: fontSize,
                          thickness: thickness,
                          verticalWidth: verticalWidth)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextServices(
                  fontSize: fontSize,
                  thickness: thickness,
                  verticalWidth: verticalWidth),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: TextEduardo(
                fontSize: fontSize,
                thickness: thickness,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: TextKarol(
                fontSize: fontSize,
                thickness: thickness,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextClients(
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
    );
  }
}
