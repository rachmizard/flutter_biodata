import 'package:biodata/widgets/my_circle_avatar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class IntroductionProfile extends StatelessWidget {
  const IntroductionProfile({
    super.key,
  });

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MyCircleAvatar(),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Rachmizard',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _launchUrl('https://linkedin.com/in/rachmizard/');
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/images/linkedin_icon.png',
                      height: 20, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    _launchUrl('https://github.com/rachmizard');
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/images/github_icon.png',
                      height: 24, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    _launchUrl('https://www.instagram.com/rachmizard/');
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/images/instagram_icon.png',
                      height: 24, fit: BoxFit.cover),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'I am currently working as a frontend engineer at Staffinc and currently studying informatics engineering at Universitas Informatika dan Bisnis.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey[700],
              ),
            )
          ],
        ),
      ),
    );
  }
}
