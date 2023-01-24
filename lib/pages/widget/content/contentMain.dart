import 'package:flutter/material.dart';
import '../../theme.dart';

class contentMain extends StatelessWidget {
  const contentMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      width: double.infinity,
      decoration: BoxDecoration(
        color: containerColor,
      ),
      child: Text('INI CONTENT UTAMA'),
    );
  }
}
