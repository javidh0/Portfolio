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
          Icon(home, size: 14, color: highlightColor),
          Text(title, style: kStyleVSmall.copyWith(color: highlightColor)),
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
