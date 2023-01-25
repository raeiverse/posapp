import 'package:flutter/material.dart';
import 'package:posapp/pages/widget/detailOrder/card/pembayaranCard.dart';

import '../../theme.dart';

class detailOrderPembayaran extends StatelessWidget {
  const detailOrderPembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      padding: EdgeInsets.symmetric(horizontal: 51),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pembayaran Via',
            style: TextM_Medium.copyWith(color: Neutral00),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              pembayaranCard(),
              pembayaranCard(),
              pembayaranCard(),
            ],
          )
        ],
      ),
    );
  }
}
