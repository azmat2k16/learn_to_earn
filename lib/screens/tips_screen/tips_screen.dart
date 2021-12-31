import 'package:flutter/material.dart';
import 'package:learn_to_earn/constants/colors.dart';
import 'package:learn_to_earn/constants/fonts.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: Center(child: Text('Tips', style: boldFont.copyWith(fontSize: 28))),
    );
  }
}
