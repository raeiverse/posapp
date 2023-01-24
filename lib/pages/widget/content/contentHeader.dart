// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:posapp/pages/theme.dart';

class contentHeader extends StatelessWidget {
  const contentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      width: double.infinity,
      height: 84,
      decoration: BoxDecoration(
        color: containerColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // NOTE : POSAPP TITLE
          Container(
            margin: EdgeInsets.only(left: 32),
            width: 111,
            height: 44,
            decoration: BoxDecoration(
              border: Border.all(
                color: MainColor,
              ),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Center(
              child: Text(
                'Posapp',
                style: TitleApp.copyWith(
                  color: MainColor,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          // NOTE : RIGHTSIDE
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: MainColor,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/icon_Setting.png',
                      width: 24,
                      height: 24,
                      color: MainColor,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: MainColor,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/icon_History.png',
                      width: 24,
                      height: 24,
                      color: MainColor,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 32),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Raeivere',
                            style: TextL_Medium.copyWith(color: Neutral90),
                          ),
                          Text(
                            'Kasir',
                            style: TextL_Regular.copyWith(color: Neutral70),
                          ),
                        ],
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/man.webp'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
