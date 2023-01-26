// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posapp/pages/cubit/kategori_cubit.dart';
import 'package:posapp/pages/widget/content/card/kategoriCard.dart';
import '../../theme.dart';

class contentKategori extends StatelessWidget {
  const contentKategori({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KategoriCubit, int>(
      builder: (context, state) {
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
                child: Row(
                  children: [
                    Text(
                      'Kategori',
                      style: HeadingM.copyWith(color: Neutral00),
                    ),
                    Spacer(),
                    Container(
                      height: 32,
                      width: 207,
                      margin: EdgeInsets.only(right: 4),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          hintText: 'Cari menu',
                          hintStyle: TextM_Regular.copyWith(color: Neutral60),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: MainColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/kategori_Search.png',
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    children: [
                      kategoriCard(
                        index: 0,
                        imageUrl: 'assets/images/kategori_Semua.png',
                        namaKategori: 'Semua',
                      ),
                      kategoriCard(
                        index: 1,
                        imageUrl: 'assets/images/kategori_KueKering.png',
                        namaKategori: 'Kue Kering',
                      ),
                      kategoriCard(
                        index: 2,
                        imageUrl: 'assets/images/kategori_Roti.png',
                        namaKategori: 'Roti',
                      ),
                      kategoriCard(
                        index: 3,
                        imageUrl: 'assets/images/kategori_Pudding.png',
                        namaKategori: 'Pudding',
                      ),
                      kategoriCard(
                        index: 4,
                        imageUrl: 'assets/images/kategori_Tart.png',
                        namaKategori: 'Tart Potong',
                      ),
                      kategoriCard(
                        index: 5,
                        imageUrl: 'assets/images/kategori_Minuman.png',
                        namaKategori: 'Minuman',
                      ),
                      kategoriCard(
                        index: 6,
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
      },
    );
  }
}
