import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final List<Widget> items;

  const InfoSection({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items,
        ),
      ),
    ));
  }
}
