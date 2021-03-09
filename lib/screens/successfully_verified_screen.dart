import 'package:flutter/material.dart';
import 'package:schoolapp/Theme/ThemeColors.dart';

import 'package:schoolapp/Theme/text_style.dart';
import 'package:schoolapp/Theme/assets.dart';
import 'package:schoolapp/screens/home_screen.dart';

class SuccessfullyVerifiedScreen extends StatefulWidget {
  @override
  _SuccessfullyVerifiedScreenState createState() =>
      _SuccessfullyVerifiedScreenState();
}

class _SuccessfullyVerifiedScreenState
    extends State<SuccessfullyVerifiedScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(color: ThemeColors.primaryBlue, width: 5),
              borderRadius: BorderRadius.circular(120),
            ),
            child: Image.asset(Assets.VECTOR),
          ),
          SizedBox(height: 20),
          Text(
            "Successfully Verified",
            style: MyTextStyles.TITLLE.copyWith(fontSize: 20),
          )
        ],
      ),
    ));
  }
}
