// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// NOTE : FONTWEIGHTS
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// NOTE : TEXTSTYLES
TextStyle TitleApp = TextStyle(fontFamily: 'ClashDisplay-Semibold');
TextStyle HeadingL = GoogleFonts.inter(fontSize: 36, fontWeight: medium);
TextStyle HeadingM = GoogleFonts.inter(fontSize: 28, fontWeight: medium);
TextStyle HeadingS = GoogleFonts.inter(fontSize: 20, fontWeight: medium);
TextStyle TextL_Medium = GoogleFonts.inter(fontSize: 16, fontWeight: medium);
TextStyle TextL_Regular = GoogleFonts.inter(fontSize: 16, fontWeight: regular);
TextStyle TextM_Medium = GoogleFonts.inter(fontSize: 14, fontWeight: medium);
TextStyle TextM_Regular = GoogleFonts.inter(fontSize: 14, fontWeight: regular);
TextStyle TextS_Medium = GoogleFonts.inter(fontSize: 12, fontWeight: medium);
TextStyle TextS_Regular = GoogleFonts.inter(fontSize: 12, fontWeight: regular);

// NOTE : COLORS
Color backgroundColor = Color(0xffF5F5FF);
Color containerColor = Color(0xffFFFFFF);
Color transparentColor = Colors.transparent;

// NOTE : NEUTRAL COLORS
Color Neutral10 = Color(0xffFFFFFF);
Color Neutral20 = Color(0xffF5F5F5);
Color Neutral30 = Color(0xffEDEDED);
Color Neutral40 = Color(0xffE0E0E0);
Color Neutral50 = Color(0xffC2C2C2);
Color Neutral60 = Color(0xff9E9E9E);
Color Neutral70 = Color(0xff757575);
Color Neutral80 = Color(0xff616161);
Color Neutral90 = Color(0xff404040);
Color Neutral00 = Color(0xff0A0A0A);

// NOTE : PRIMARY COLORS
Color MainColor = Color(0xffE37F23);
Color SurfaceColor = Color(0xffF5F5FF);
Color BorderColor = Color(0xffDFE0F3);
Color HoverColor = Color(0xff3334CC);
Color PressedColor = Color(0xff21217A);
Color FocusColor = Color(0xff4C4DDC).withOpacity(0.2);

// NOTE : DANGER COLORS
Color DangerMainColor = Color(0xffCB3A31);
Color DangerSurfaceColor = Color(0xFFF4F2);
Color DangerBorderColor = Color(0xffEEB4B0);
Color DangerHoverColor = Color(0xffBD251C);
Color DangerPressedColor = Color(0xff731912);

// NOTE : SHADOW COLORS
Color InnerShadow = Color(0xff000000).withOpacity(0.08);
Color Shadow_1 = Color(0xff000000).withOpacity(0.12);
Color Shadow_2 = Color(0xff000000).withOpacity(0.1);

// NOTE : BOXSHADOWS
BoxShadow boxShadowInner = BoxShadow(
  color: InnerShadow,
  blurRadius: 2,
  offset: Offset(1, 2),
);

BoxShadow boxShadow_1 = BoxShadow(
  color: Shadow_1,
  blurRadius: 2,
  offset: Offset(0, 1),
);

BoxShadow boxShadow_2 = BoxShadow(
  color: Shadow_2,
  blurRadius: 8,
  offset: Offset(0, 4),
);
