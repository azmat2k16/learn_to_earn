import 'package:flutter/material.dart';
import 'package:learn_to_earn/constants/fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Profile', style: boldFont.copyWith(fontSize: 28))),
    );
  }
}
