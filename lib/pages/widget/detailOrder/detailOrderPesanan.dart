import 'package:flutter/material.dart';
import 'package:posapp/pages/widget/detailOrder/card/pesananCard.dart';
import 'package:posapp/pages/widget/spacerSpace.dart';

import '../../theme.dart';

class detailOrderPesanan extends StatelessWidget {
  detailOrderPesanan({super.key});

  @override
  bool isEmpty = true;
  Widget daftarPesanan() {
    if (isEmpty = false) {
      return Container(
        height: 260,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/daftar_Pesanan.png',
              width: 132,
              height: 84,
            ),
            SizedBox(height: 16),
            Text(
              'Masukkan pesanan dengan menekan menu disamping ',
              style: TextM_Regular.copyWith(color: Neutral60),
            ),
          ],
        ),
      );
    } else {
      return Container(
        height: 260,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              pesananCard(),
              pesananCard(),
              pesananCard(),
              pesananCard(),
              pesananCard(),
              pesananCard(),
              pesananCard(),
              pesananCard(),
            ],
          ),
        ),
      );
    }
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 51),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Daftar pesanan',
            style: TextM_Medium.copyWith(color: Neutral00),
          ),
          SizedBox(height: 16),
          daftarPesanan(),
          spacerSpace(),
        ],
      ),
    );
  }
}
