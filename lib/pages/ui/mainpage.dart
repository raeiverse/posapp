// ignore_for_file: camel_case_types, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';
import 'package:posapp/pages/widget/content/contentHeader.dart';
import 'package:posapp/pages/widget/content/contentKategori.dart';
import 'package:posapp/pages/widget/content/contentMain.dart';

class mainpage extends StatelessWidget {
  const mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 40),
              width: MediaQuery.of(context).size.width / 1.55,
              // color: containerColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    contentHeader(),
                    contentKategori(),
                    contentMain(),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: MediaQuery.of(context).size.width / 3.5,
              color: containerColor,
            ),
          ],
        ),
      ),
    );
  }
}