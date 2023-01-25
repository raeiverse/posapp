import 'package:flutter/material.dart';

import '../../../theme.dart';

class contentCard extends StatelessWidget {
  const contentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: 200,
      height: 212,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [boxShadow_2],
      ),
      child: Column(
        children: [
          Container(
            height: 152,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/croissant_Original.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              color: Neutral10,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Croissant Original',
                    style: TextL_Medium.copyWith(
                      color: Neutral00,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        'IDR16.000',
                        style: TextM_Regular.copyWith(
                          color: Neutral90,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'IDR16.000',
                        style: TextM_Regular.copyWith(
                          color: Neutral60,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
