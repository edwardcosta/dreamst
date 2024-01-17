import 'package:dreamst/constants/projectColors.dart';
import 'package:dreamst/pages/home/mobileContent.dart';
import 'package:dreamst/pages/home/webContent.dart';
import 'package:dreamst/utils/responsive.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(color: kBackground),
      child: const Responsive(
        mobile: MobileContent(),
        desktop: WebContentHome(),
      ),
    );
  }
}
