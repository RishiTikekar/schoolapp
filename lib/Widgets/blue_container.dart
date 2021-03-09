import 'package:flutter/material.dart';
import 'package:schoolapp/Theme/ThemeColors.dart';

class BlueContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final EdgeInsetsGeometry padding;
  BlueContainer(
      {this.child,
      this.height,
      this.width,
      this.padding: const EdgeInsets.all(2)});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ThemeColors.primaryBlue,
      ),
      child: child,
    );
  }
}
