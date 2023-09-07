import 'package:flutter/material.dart';
import 'const.dart';
import "package:hovering/hovering.dart";
import 'helper_funtions.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.width,
      required this.onPress,
      required this.name,
      required this.icon,
      required this.scaleFactor});

  final double width;
  final String name;
  final Function onPress;
  final IconData icon;
  final double scaleFactor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: kColorSecondary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      onPressed: () {
        onPress();
      },
      child: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: width,
        height: 50 * scaleFactor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: kBackgroundColor, size: 25 * scaleFactor),
            SizedBox(width: 15 * scaleFactor),
            Text(name,
                style: kFont.copyWith(
                    color: kBackgroundColor, fontSize: 20 * scaleFactor)),
          ],
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  const CircularButton(
      {super.key,
      required this.icon,
      required this.url,
      required this.scaleFactor});

  final IconData icon;
  final double scaleFactor;
  final String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      child: HoverWidget(
        onHover: (event) {},
        hoverChild: RawMaterialButton(
          padding: EdgeInsets.zero,
          elevation: 0,
          fillColor: kBackgroundColor,
          onPressed: () {
            urlLaunch(url: url);
          },
          shape: const CircleBorder(
              side: BorderSide(width: 0.9, color: kColorSecondary)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(icon, color: kColorSecondary, size: 20 * scaleFactor),
          ),
        ),
        child: RawMaterialButton(
          padding: EdgeInsets.zero,
          elevation: 0,
          fillColor: kBackgroundColor,
          onPressed: () {},
          shape: const CircleBorder(
              side: BorderSide(width: 0.75, color: kColorTert)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(icon, color: kColorTert, size: 20 * scaleFactor),
          ),
        ),
      ),
    );
  }
}

class PlaceHolderImage extends StatelessWidget {
  const PlaceHolderImage({
    super.key,
    required this.scaleFactor,
  });

  final double scaleFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: 300 * scaleFactor,
      height: 250 * scaleFactor,
      decoration: const BoxDecoration(
        color: kColorTert,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: Text("Image", style: kStyleMedium),
      ),
    );
  }
}

class TitleScrollController extends StatelessWidget {
  const TitleScrollController(
      {super.key,
      required this.icon,
      required this.title,
      required this.width});

  final IconData icon;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: HoverWidget(
        hoverChild: ContainerOfTitleScrollController(
          highlightColor: kColorSecondary,
          icon: icon,
          title: title,
          width: width,
        ),
        onHover: (event) {},
        child: ContainerOfTitleScrollController(
          highlightColor: kColorTert,
          icon: icon,
          title: title,
          width: width,
        ),
      ),
    );
  }
}

class ContainerOfTitleScrollController extends StatelessWidget {
  const ContainerOfTitleScrollController(
      {super.key,
      required this.highlightColor,
      required this.icon,
      required this.title,
      required this.width});

  final Color highlightColor;
  final IconData icon;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: highlightColor),
        color: kTransperent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, size: 14, color: highlightColor),
          Text(title, style: kStyleVSmall.copyWith(color: highlightColor)),
        ],
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  const SkillWidget(
      {super.key,
      required this.heading,
      required this.paragraph,
      required this.icon,
      required this.count});

  final String heading, paragraph, count;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 30, 5, 0),
      child: GestureDetector(
        onTap: () {},
        child: HoverWidget(
          hoverChild: SkillWidgetContainer(
            color: kColorSecondary,
            heading: heading,
            paragraph: paragraph,
            icon: icon,
            count: count,
          ),
          onHover: (e) {},
          child: SkillWidgetContainer(
            color: kColorPrimary,
            heading: heading,
            paragraph: paragraph,
            icon: icon,
            count: count,
          ),
        ),
      ),
    );
  }
}

class SkillWidgetContainer extends StatelessWidget {
  const SkillWidgetContainer({
    super.key,
    required this.color,
    required this.heading,
    required this.paragraph,
    required this.icon,
    required this.count,
  });

  final Color color;
  final String heading, paragraph, count;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(heading, style: kStyleMedium.copyWith(color: color)),
              Icon(icon, size: kStyleMedium.fontSize, color: color)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35),
            child: Text(
              paragraph,
              style: kStyleVSmall.copyWith(color: kColorTert),
            ),
          ),
          Text(
            "$count Projects",
            style: kStyleSmall.copyWith(
                decorationColor: kColorPrimary,
                decorationThickness: 2.5,
                decoration: color == kColorSecondary
                    ? TextDecoration.underline
                    : TextDecoration.none),
          ),
        ],
      ),
    );
  }
}

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Paragraph extends StatelessWidget {
  const Paragraph({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 580,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        child: Text(
          text,
          style: kStyleSmall.copyWith(color: kColorTert),
        ),
      ),
    );
  }
}

class SubHeading extends StatelessWidget {
  const SubHeading(
      {super.key,
      required this.n1,
      required this.h1,
      required this.n2,
      required this.h2});

  final String n1, h1, n2, h2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.zero,
      padding: const EdgeInsets.fromLTRB(5, 30, 5, 20),
      child: SizedBox(
        width: 800,
        child: RichText(
          text: TextSpan(
            text: n1,
            style: kStyleVeryBig,
            children: [
              TextSpan(
                text: h1,
                style: kStyleVeryBig.copyWith(color: kColorSecondary),
              ),
              TextSpan(
                text: n2,
                style: kStyleVeryBig,
              ),
              TextSpan(
                text: h2,
                style: kStyleVeryBig.copyWith(color: kColorSecondary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
