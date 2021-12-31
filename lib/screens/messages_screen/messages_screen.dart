import 'package:flutter/material.dart';
import 'package:learn_to_earn/constants/fonts.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Messages', style: boldFont.copyWith(fontSize: 28))),
    );
  }
}
