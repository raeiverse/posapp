import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';

class pesananCard extends StatelessWidget {
  const pesananCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            child: Center(
              child: Image.asset(
                'assets/images/daftarPesanan_Trash.png',
                width: 14,
                height: 28,
              ),
            ),
          ),
          SizedBox(width: 21),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Le pain swisse',
                  style: TextM_Medium.copyWith(color: Neutral90),
                ),
                SizedBox(height: 2),
                Text(
                  ('IDR' + 23000.toString()),
                  style: TextM_Regular.copyWith(color: Neutral70),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.all(4),
                child: Center(
                  child: Image.asset(
                    'assets/images/daftarPesanan_Min.png',
                    width: 18,
                    height: 18,
                  ),
                ),
              ),
              Text(
                '1',
                style: TextM_Medium.copyWith(color: Neutral90),
              ),
              Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.all(4),
                child: Center(
                  child: Image.asset(
                    'assets/images/daftarPesanan_Plus.png',
                    width: 18,
                    height: 18,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
