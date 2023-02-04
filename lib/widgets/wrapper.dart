import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  final Color bgColor;
  final Widget child;

  const Wrapper({super.key, this.bgColor = Colors.white, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: MediaQuery.of(context).size.height * 0.5,
      color: bgColor,
      child: child,
    ));
  }
}
