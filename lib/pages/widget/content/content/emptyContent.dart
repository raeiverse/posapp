import 'package:flutter/material.dart';

import '../../../theme.dart';

class emptyContent extends StatelessWidget {
  const emptyContent({super.key});

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
              'Rekomendasi',
              style: HeadingM.copyWith(color: Neutral00),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Image.asset(
              'assets/images/daftar_Pesanan.png',
              width: 132,
              height: 84,
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Text(
              'Produk Tidak Tersedia :(',
              style: TextM_Regular.copyWith(color: Neutral60),
            ),
          ),
        ],
      ),
    );
  }
}
