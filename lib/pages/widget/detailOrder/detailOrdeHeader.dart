import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';
import 'package:posapp/pages/widget/spacerSpace.dart';

class detailOrderHeader extends StatelessWidget {
  const detailOrderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 62),
      padding: EdgeInsets.symmetric(horizontal: 51),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Detail Order',
            style: HeadingM.copyWith(color: Neutral00),
          ),
          spacerSpace(),
        ],
      ),
    );
  }
}
