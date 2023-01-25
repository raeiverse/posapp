import 'package:flutter/material.dart';
import '../../../theme.dart';
import '../card/contentCard.dart';

class promoContent extends StatelessWidget {
  const promoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: containerColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Promo',
              style: HeadingM.copyWith(color: Neutral00),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  contentCard(),
                  contentCard(),
                  contentCard(),
                  contentCard(),
                  contentCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
