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
    return const Placeholder();
  }
}

class TheContent extends StatelessWidget {
  const TheContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleScrollController(
          icon: home,
          title: "WELCOME",
          width: 100,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 30, 5, 20),
          child: SizedBox(
            width: 800,
            child: RichText(
              text: TextSpan(
                text: 'Hi from ',
                style: kStyleVeryBig,
                children: [
                  TextSpan(
                    text: 'Javidh,',
                    style: kStyleVeryBig.copyWith(color: kColorSecondary),
                  ),
                  TextSpan(
                    text: ' \nWelcome to My ',
                    style: kStyleVeryBig,
                  ),
                  TextSpan(
                    text: 'Tech Odyssey!',
                    style: kStyleVeryBig.copyWith(color: kColorSecondary),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 580,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Text(
              kWelcomeText1,
              style: kStyleSmall.copyWith(color: kColorTert),
            ),
          ),
        )
      ],
    );
  }
}
