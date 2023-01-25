import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';

class kategoriCard extends StatelessWidget {
  final String imageUrl;
  final String namaKategori;
  final bool isSelected;
  const kategoriCard({
    Key? key,
    required this.imageUrl,
    required this.namaKategori,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      width: 110,
      height: 112,
      decoration: BoxDecoration(
        color: isSelected ? MainColor : Neutral10,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: MainColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 44,
            height: 44,
            color: isSelected ? Neutral10 : null,
          ),
          SizedBox(height: 18),
          Text(
            namaKategori,
            style: TextM_Medium.copyWith(
              color: isSelected ? Neutral10 : MainColor,
            ),
          ),
        ],
      ),
    );
  }
}
