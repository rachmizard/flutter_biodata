import 'package:biodata/widgets/controller_carousel.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            'Skills',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ControlledCarousel(
          items: [
            "Flutter",
            "React Native",
            "React JS",
            "Node JS",
            "Express JS",
            "Laravel"
          ],
        )
      ],
    );
  }
}
