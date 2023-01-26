import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posapp/pages/cubit/kategori_cubit.dart';
import 'package:posapp/pages/theme.dart';

class kategoriCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String namaKategori;

  const kategoriCard({
    Key? key,
    required this.index,
    required this.imageUrl,
    required this.namaKategori,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<KategoriCubit>().setPage(index);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        width: 110,
        height: 112,
        decoration: BoxDecoration(
          color: context.read<KategoriCubit>().state == index
              ? MainColor
              : Neutral10,
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
              fit: BoxFit.contain,
              color: context.read<KategoriCubit>().state == index
                  ? Neutral10
                  : null,
            ),
            SizedBox(height: 18),
            Center(
              child: Text(
                namaKategori,
                style: TextM_Medium.copyWith(
                  color: context.read<KategoriCubit>().state == index
                      ? Neutral10
                      : MainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
