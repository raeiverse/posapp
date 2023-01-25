import 'package:flutter/material.dart';
import 'package:posapp/pages/widget/content/card/contentCard.dart';
import 'package:posapp/pages/widget/content/content/kueKeringContent.dart';
import 'package:posapp/pages/widget/content/content/rekomendasiContent.dart';
import '../../theme.dart';

class contentMain extends StatelessWidget {
  const contentMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.9,
      decoration: BoxDecoration(
        color: containerColor,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            rekomendasiContent(),
            kueKeringContent(),
          ],
        ),
      ),
    );
  }
}
