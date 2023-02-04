import 'package:biodata/widgets/info_item.dart';
import 'package:biodata/widgets/info_section.dart';
import 'package:biodata/widgets/wrapper.dart';
import 'package:flutter/material.dart';

class EducationAndExperience extends StatelessWidget {
  const EducationAndExperience({
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
            'Education & Experience',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(children: [
          const Wrapper(
            child: InfoSection(
              items: [
                InfoItem(
                  title: 'SMPN 1 Cicalengka',
                  subtitle: '2012-2015',
                ),
                InfoItem(
                  title: 'SMKN 13 Bandung',
                  subtitle: '2015-2018',
                ),
                InfoItem(
                  title: 'Universitas Informatika dan Bisnis Indonesia',
                  subtitle: '2020-2024',
                ),
              ],
            ),
          ),
          Wrapper(
            bgColor: Colors.brown.shade50.withOpacity(0.8),
            child: const InfoSection(
              items: [
                InfoItem(
                  title: 'Birutekno as Backend Developer',
                  subtitle: '2018-2019',
                ),
                InfoItem(
                  title: 'PT. Smooets as Frontend Developer',
                  subtitle: '2019-2021',
                ),
                InfoItem(
                  title: 'Staffinc as Frontend Developer',
                  subtitle: '2021 until now',
                ),
              ],
            ),
          ),
        ])
      ],
    );
  }
}
