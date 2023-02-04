import 'package:biodata/widgets/info_item.dart';
import 'package:biodata/widgets/info_section.dart';
import 'package:biodata/widgets/introduction_profile.dart';
import 'package:biodata/widgets/wrapper.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'About Me',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(children: [
          Wrapper(
            bgColor: Colors.brown.shade50.withOpacity(0.8),
            child: const IntroductionProfile(),
          ),
          const Wrapper(
              child: InfoSection(
            items: [
              InfoItem(
                title: 'Profession',
                subtitle: 'Software Engineer',
              ),
              InfoItem(
                title: 'Email',
                subtitle: 'rachmizard11072000@gmail.com',
              ),
              InfoItem(
                title: 'Contact',
                subtitle: '+62 813-3848-85881',
              ),
              InfoItem(
                  title: 'Address',
                  subtitle: 'PBI Kostrad, Kec. Rancaekek, Kab. Bandung'),
            ],
          ))
        ]),
      ],
    );
  }
}
