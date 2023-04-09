// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mystyle {
  static const Color white = Color(0xffffffff);
  static const Color lightWhite = Color(0xffeff5f4);
  static const Color lighterWhite = Color(0xfffcfcfc);

  static const Color grey = Color(0xff9397a0);
  static const Color lightGrey = Color(0xffa7a7a7);
  static const Color lighterGrey = Color(0x0ffeeeee);

  static const Color blue = Color(0xff5474FD);
  static const Color lightBlue = Color(0xff83b1ff);
  static const Color lighterBlue = Color(0xffc1d4f9);

  static const Color black = Color(0xff19202d);

  static const double kBorderRadius = 16.0;

  final h3bold = GoogleFonts.nunito(
    color: black,
    fontWeight: FontWeight.w800,
    fontSize: 18,
  );

  final h1bold = GoogleFonts.nunito(
    color: black,
    fontWeight: FontWeight.w800,
    fontSize: 24,
  );

  final pbold = GoogleFonts.nunito(
    color: black,
    fontWeight: FontWeight.w800,
    fontSize: 15,
  );

  final footermd = GoogleFonts.nunito(
    color: grey,
    fontWeight: FontWeight.w800,
    fontSize: 12,
  );

  final kBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderRadius),
    borderSide: BorderSide.none,
  );
}
