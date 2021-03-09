
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/Theme/ThemeColors.dart';
import 'package:schoolapp/screens/login_screen.dart';
import 'package:schoolapp/Provider/countdown_timer_provider.dart';

void main() {
  runApp(MyApp()
      // DevicePreview(
      //   enabled: true,
      //   builder: (context) => MyApp(),
      // ),
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<CountdownTimerProvider>(
      create: (context) => CountdownTimerProvider(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: MaterialApp(
            title: 'School App',
            theme: ThemeData(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  primary: ThemeColors.primaryBlue,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            home: HomeScreen()),
      ),
    );
  }
}
