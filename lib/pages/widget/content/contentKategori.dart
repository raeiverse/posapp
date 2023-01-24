// ignore_for_file: file_names

import 'package:flutter/material.dart';
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
      child: Text('INI KATEGORI'),
    );
  }
}
