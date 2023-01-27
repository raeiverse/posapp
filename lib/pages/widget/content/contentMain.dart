import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:posapp/pages/cubit/kategori_cubit.dart';
import 'package:posapp/pages/ui/mainpage.dart';
import 'package:posapp/pages/widget/content/card/contentCard.dart';
import 'package:posapp/pages/widget/content/content/kueKeringContent.dart';
import 'package:posapp/pages/widget/content/content/pencarianContent.dart';
import 'package:posapp/pages/widget/content/content/promoContent.dart';
import 'package:posapp/pages/widget/content/content/rekomendasiContent.dart';
import '../../theme.dart';

class contentMain extends StatefulWidget {
  const contentMain({super.key});

  @override
  State<contentMain> createState() => _contentMainState();
}

class _contentMainState extends State<contentMain> {
  Future _handleRefresh() async {
    return await Future.delayed(
      Duration(seconds: 1),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => mainpage(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Column(
          children: [
            rekomendasiContent(),
            promoContent(),
            kueKeringContent(),
          ],
        );
      case 1:
        return Column(
          children: [
            pencarianContent(),
          ],
        );
      case 2:
        return Column(
          children: [
            kueKeringContent(),
          ],
        );
      default:
        return Column(
          children: [
            rekomendasiContent(),
            kueKeringContent(),
          ],
        );
    }
  }

  Widget build(BuildContext context) {
    return BlocBuilder<KategoriCubit, int>(
      builder: (context, currentIndex) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 32),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 1.9,
          decoration: BoxDecoration(
            color: containerColor,
          ),
          child: LiquidPullToRefresh(
            onRefresh: _handleRefresh,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  buildContent(currentIndex),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
