import 'package:flutter/material.dart';
import 'package:learn_to_earn/constants/fonts.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Center(child: Text('Blogs', style: boldFont.copyWith(fontSize: 28))),
    );
  }
}
