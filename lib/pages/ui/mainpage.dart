// ignore_for_file: camel_case_types, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';
import 'package:posapp/pages/widget/content/contentHeader.dart';
import 'package:posapp/pages/widget/content/contentKategori.dart';
import 'package:posapp/pages/widget/content/contentMain.dart';
import 'package:posapp/pages/widget/detailOrder/detailOrdeHeader.dart';
import 'package:posapp/pages/widget/detailOrder/detailOrderBiaya.dart';
import 'package:posapp/pages/widget/detailOrder/detailOrderLayanan.dart';
import 'package:posapp/pages/widget/detailOrder/detailOrderPembayaran.dart';
import 'package:posapp/pages/widget/detailOrder/detailOrderPesanan.dart';

class mainpage extends StatelessWidget {
  const mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 40),
            width: MediaQuery.of(context).size.width / 1.5,
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  detailOrderHeader(),
                  detailOrderLayanan(),
                  detailOrderPesanan(),
                  detailOrderBiaya(),
                  detailOrderPembayaran(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
