import 'package:biodata/widgets/controlled_carousel.dart';
import 'package:flutter/material.dart';

class Hobby extends StatelessWidget {
  const Hobby({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Hobby',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ControlledCarousel(
          items: [
            "Playing Music",
            "Coding",
            "Riding",
          ],
        )
      ],
    );
  }
}
