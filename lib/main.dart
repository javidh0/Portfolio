import 'package:flutter/material.dart';
import 'package:portfolio/widgets.dart';
import 'const.dart';
import 'cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        body: TheViewport(),
      ),
    );
  }
}

class TheViewport extends StatelessWidget {
  const TheViewport({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PersonalInfoCard(),
        Padding(
          // padding: EdgeInsets.zero,
          padding: EdgeInsets.only(left: 150, top: 50, bottom: 20),
          child: TheContent(),
        ),
      ],
    );
  }
}

class MyPlaceholder extends StatelessWidget {
  const MyPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const SkillWidget(
        heading: "Flutter Connoisseur",
        paragraph:
            "Mastered crafting mesmerizing mobile apps with Flutter, orchestrating an immersive user journey.",
        icon: skills,
        count: "2");
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.amber,
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}

class TheContent extends StatelessWidget {
  const TheContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView(
          children: const [
            TitleScrollController(
              icon: home,
              title: "WELCOME",
              width: 100,
            ),
            SubHeading(
                n1: 'Hi from ',
                h1: 'Javidh,',
                n2: ' \nWelcome to My ',
                h2: 'Tech Odyssey!'),
            Paragraph(text: kWelcomeText1),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: TitleScrollController(
                  icon: about, title: "About Me", width: 100),
            ),
            SubHeading(
                n1: "Driven By ",
                h1: "Curiosity\n",
                n2: "Fueled By ",
                h2: 'Passion.'),
            Paragraph(text: kAboutMe),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: TitleScrollController(
                  icon: skills, title: "Skills", width: 80),
            ),
            kSkillFlutterDart,
            kSkillAiMl,
            kSkillDataAnalytics,
            kSkillFSD,
          ],
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
