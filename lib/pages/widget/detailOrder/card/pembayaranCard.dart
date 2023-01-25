import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';

class pembayaranCard extends StatelessWidget {
  const pembayaranCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99,
      height: 88,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 64,
            decoration: BoxDecoration(
              border: Border.all(color: MainColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/pembayaran_Tunai.png',
                width: 32,
                height: 32,
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Tunai',
            style: TextM_Medium.copyWith(color: Neutral80),
          ),
        ],
      ),
    );
  }
}
