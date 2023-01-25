// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:posapp/pages/widget/content/card/kategoriCard.dart';
import '../../theme.dart';

class contentKategori extends StatelessWidget {
  const contentKategori({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      width: double.infinity,
      height: 196,
      decoration: BoxDecoration(
        color: containerColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Kategori',
              style: HeadingM.copyWith(color: Neutral00),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  kategoriCard(
                    imageUrl: 'assets/images/kategori_Semua.png',
                    namaKategori: 'Semua',
                    isSelected: true,
                  ),
                  kategoriCard(
                    imageUrl: 'assets/images/kategori_KueKering.png',
                    namaKategori: 'Kue Kering',
                  ),
                  kategoriCard(
                    imageUrl: 'assets/images/kategori_Roti.png',
                    namaKategori: 'Roti',
                  ),
                  kategoriCard(
                    imageUrl: 'assets/images/kategori_Pudding.png',
                    namaKategori: 'Pudding',
                  ),
                  kategoriCard(
                    imageUrl: 'assets/images/kategori_Tart.png',
                    namaKategori: 'Tart Potong',
                  ),
                  kategoriCard(
                    imageUrl: 'assets/images/kategori_Minuman.png',
                    namaKategori: 'Minuman',
                  ),
                  kategoriCard(
                    imageUrl: 'assets/images/kategori_Biskuit.png',
                    namaKategori: 'Biskuit',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
