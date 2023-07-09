import 'package:flutter/material.dart';
import 'const.dart';
import 'widgets.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    //
    double hs = h / 840.8;

    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        width: 390,
        height: h,
        decoration: BoxDecoration(
          border: Border.all(width: 0.75, color: kColorTert),
          color: kBackgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(40 * hs),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mohammed\nJavidh",
                      style: kStyleBig, textScaleFactor: hs),
                  Padding(
                    padding: EdgeInsets.only(top: 7 * hs),
                    child: Text("Student",
                        style: kStyleSmall, textScaleFactor: hs),
                  ),
                ],
              ),
            ),
            PlaceHolderImage(scaleFactor: hs),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30 * hs),
              child: Text(
                "Mohammed Javidh\nChennai, TamilNadu, India",
                style: kStyleMedium,
                textAlign: TextAlign.center,
                textScaleFactor: 0.95 * hs,
              ),
            ),
            Text(
              "©2023 Javidh. All rights are reserved",
              style: kStyleSmall.copyWith(color: kColorTert),
              textScaleFactor: hs,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 35 * hs),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularButton(
                      scaleFactor: hs,
                      icon: linkedIn,
                      url: 'https://flutter.dev'),
                  CircularButton(
                      scaleFactor: hs,
                      icon: gitHub,
                      url: 'https://flutter.dev'),
                  CircularButton(
                      scaleFactor: hs,
                      icon: leetCode,
                      url: 'https://flutter.dev'),
                  CircularButton(
                      scaleFactor: hs,
                      icon: instagram,
                      url: 'https://flutter.dev'),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 50 * hs, vertical: 20 * hs),
              child: MyButton(
                  scaleFactor: hs,
                  width: double.infinity,
                  onPress: () {},
                  name: "Contact Me",
                  icon: gmail),
            ),
          ],
        ),
      ),
    );
  }
}
