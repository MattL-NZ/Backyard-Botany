import 'package:backyard_botany/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'SF-Pro-Bold',
            color: textTitleColor
          ),
        ),
      ),
    );
  }
}