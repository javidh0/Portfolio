import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final TextStyle kFont = GoogleFonts.poppins();
const Color kBackgroundColor = Color(0xFF1D1B1D);
const Color kFontColorPrimary = Color(0xFFFFFFFF);
const Color kFontColorSecondary = Color(0xFF4ED385);
const Color kColorPrimary = Color(0xFFFFFFFF);
const Color kColorSecondary = Color(0xFF4ED385);
const Color kColorTert = Color(0xFF949395);
const Color kTransperent = Colors.transparent;

final TextStyle kStyleVeryBig = kFont.copyWith(
    color: kColorPrimary, fontSize: 50, fontWeight: FontWeight.bold);
final TextStyle kStyleBig = kFont.copyWith(
    color: kColorPrimary, fontSize: 25, fontWeight: FontWeight.bold);
final TextStyle kStyleSmall =
    kFont.copyWith(color: kColorPrimary, fontSize: 13);
final TextStyle kStyleMedium = kFont.copyWith(
    color: kColorPrimary, fontSize: 20, fontWeight: FontWeight.w100);

final TextStyle kStyleVSmall = kStyleSmall.copyWith(fontSize: 10);

const IconData linkedIn = FontAwesomeIcons.linkedin;
const IconData gitHub = FontAwesomeIcons.github;
const IconData leetCode = FontAwesomeIcons.code;
const IconData instagram = FontAwesomeIcons.instagram;
const IconData gmail = Icons.mail_outline_outlined;
const IconData home = Icons.home_outlined;
