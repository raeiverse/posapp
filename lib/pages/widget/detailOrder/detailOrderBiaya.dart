import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';
import 'package:posapp/pages/widget/spacerSpace.dart';

class detailOrderBiaya extends StatelessWidget {
  const detailOrderBiaya({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 51),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextM_Medium.copyWith(color: Neutral80),
              ),
              Text(
                (155000.toString()),
                style: TextM_Medium.copyWith(color: Neutral80),
              ),
            ],
          ),
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax',
                style: TextM_Medium.copyWith(color: Neutral80),
              ),
              Text(
                (155000.toString()),
                style: TextM_Medium.copyWith(color: Neutral80),
              ),
            ],
          ),
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discount',
                style: TextM_Medium.copyWith(color: Neutral80),
              ),
              Text(
                (155000.toString()),
                style: TextM_Medium.copyWith(color: Neutral80),
              ),
            ],
          ),
          spacerSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextL_Medium.copyWith(color: Neutral00),
              ),
              Text(
                (155000.toString()),
                style: TextL_Medium.copyWith(color: MainColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
