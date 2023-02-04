import 'package:biodata/container/about_me.dart';
import 'package:biodata/container/education_experience.dart';
import 'package:biodata/container/hobby.dart';
import 'package:biodata/container/skills.dart';
import 'package:biodata/widgets/my_carousel_profiles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Biodata',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MyCarouselProfiles(),
            AboutMe(),
            Skills(),
            EducationAndExperience(),
            Hobby(),
          ],
        ),
      ),
    );
  }
}
