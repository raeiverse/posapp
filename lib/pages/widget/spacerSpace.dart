import 'package:flutter/material.dart';

import '../theme.dart';

class spacerSpace extends StatelessWidget {
  const spacerSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      height: 1,
      color: Neutral40,
    );
  }
}
