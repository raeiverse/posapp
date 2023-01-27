import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posapp/pages/cubit/select_cubit.dart';
import 'package:posapp/pages/model/produkModel.dart';

import '../../../theme.dart';

class contentCard extends StatelessWidget {
  final produkModel dataProduk;
  const contentCard(
    this.dataProduk, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SelectCubit>().isSelected(dataProduk.id);
    return GestureDetector(
      onTap: () {
        context.read<SelectCubit>().selectProduct(dataProduk.id);
        if (isSelected == true) {
        } else if (isSelected == false) {}
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        width: 200,
        height: 212,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected == true ? MainColor : transparentColor,
            width: 2,
          ),
          boxShadow: [boxShadow_2],
        ),
        child: Column(
          children: [
            Container(
              height: 148,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: NetworkImage(dataProduk.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: Neutral10,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dataProduk.namaProduk.titleCase,
                      style: TextL_Medium.copyWith(
                        color: Neutral00,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'IDR' +
                              (dataProduk.hargaProduk - dataProduk.diskonProduk)
                                  .toString(),
                          style: TextM_Regular.copyWith(
                            color: Neutral90,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'IDR' + dataProduk.hargaProduk.toString(),
                          style: TextM_Regular.copyWith(
                            color: dataProduk.promoProduk == true
                                ? Neutral60
                                : transparentColor,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
