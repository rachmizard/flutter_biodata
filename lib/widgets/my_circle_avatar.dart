import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.grey.shade400,
            width: 4,
          ),
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/picture_1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
