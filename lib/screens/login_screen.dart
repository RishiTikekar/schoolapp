import 'dart:math';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/Theme/ThemeColors.dart';
import 'package:schoolapp/Theme/assets.dart';
import 'package:schoolapp/Theme/text_style.dart';
import 'package:schoolapp/Widgets/blue_container.dart';
import 'package:schoolapp/screens/choose_account_sceen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              BlueContainer(
                child: Container(),
                width: 50,
                height: 50,
              ),
              SizedBox(height: 30),
              Text("Welcome!", style: MyTextStyles.TITLLE),
              SizedBox(height: 30),
              Text(
                "Enter your registered no.",
                style: MyTextStyles.SUB_TITLLE,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  BlueContainer(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: Row(
                      children: [
                        CountryCodePicker(
                          initialSelection: 'IN',
                          textStyle:
                              TextStyle(color: ThemeColors.backgroundWhite),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: ThemeColors.backgroundWhite,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.numberWithOptions(
                          decimal: true, signed: true),
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 19)),
                      onPressed: () {},
                      child: Image.asset(Assets.BACK_ARROW),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    flex: 4,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ChooseAccountScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Next  ",
                            style: TextStyle(
                                fontSize: 18,
                                color: ThemeColors.backgroundWhite),
                          ),
                          Transform.rotate(
                            child: Image.asset(Assets.BACK_ARROW),
                            angle: pi,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
