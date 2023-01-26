import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posapp/pages/cubit/produk_cubit.dart';
import 'package:posapp/pages/widget/content/card/contentCard.dart';
import 'package:posapp/pages/widget/content/content/emptyContent.dart';
import '../../../model/produkModel.dart';
import '../../../theme.dart';

class rekomendasiContent extends StatefulWidget {
  const rekomendasiContent({super.key});

  @override
  State<rekomendasiContent> createState() => _rekomendasiContentState();
}

class _rekomendasiContentState extends State<rekomendasiContent> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<ProdukCubit>().fetchProduk();
    super.initState();
  }

  @override
  Widget listProduk(List<produkModel> readProduk) {
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: readProduk.map((produkModel e) {
                  return contentCard(e);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return BlocConsumer<ProdukCubit, ProdukState>(
      listener: (context, state) {
        if (state is ProdukFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: DangerMainColor,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is ProdukLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProdukSuccess) {
          if (state.dataProduk
                  .where((element) => (element.rekomendasiProduk == true))
                  .toList()
                  .length ==
              0) {
            return emptyContent();
          } else {
            return listProduk(state.dataProduk
                .where((element) => (element.rekomendasiProduk == true))
                .toList());
          }
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
