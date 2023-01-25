import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';
import 'package:posapp/pages/widget/detailOrder/card/layananCard.dart';
import 'package:posapp/pages/widget/spacerSpace.dart';

class detailOrderLayanan extends StatelessWidget {
  const detailOrderLayanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 51),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order #' + 15.toString(),
            style: TextM_Medium.copyWith(color: Neutral00),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Minggu, 08 Januari 2023',
                style: TextS_Regular.copyWith(color: Neutral60),
              ),
              Text(
                '12.45',
                style: TextS_Regular.copyWith(color: Neutral60),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Layanan',
            style: TextM_Medium.copyWith(color: Neutral00),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              layananCard(),
              layananCard(),
            ],
          ),
          Text(
            'Nama',
            style: TextM_Medium.copyWith(color: Neutral00),
          ),
          SizedBox(height: 16),
          Container(
            height: 36,
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: 'Nama kustomer',
                hintStyle: TextM_Regular.copyWith(color: Neutral60),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          spacerSpace(),
        ],
      ),
    );
  }
}
