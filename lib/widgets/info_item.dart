import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const InfoItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey.shade700),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }
}
