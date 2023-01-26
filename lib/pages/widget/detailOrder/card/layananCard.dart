import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';

class layananCard extends StatelessWidget {
  const layananCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          width: MediaQuery.of(context).size.width / 11,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: MainColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Dine in',
              style: TextM_Regular.copyWith(color: Neutral60),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          width: MediaQuery.of(context).size.width / 11,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: MainColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Take away',
              style: TextM_Regular.copyWith(color: Neutral60),
            ),
          ),
        ),
      ],
    );
  }
}
