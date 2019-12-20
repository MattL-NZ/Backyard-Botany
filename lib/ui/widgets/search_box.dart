import 'package:backyard_botany/ui/shared/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.0, left: 24.0, right: 24.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFa6a7a8),
              offset: Offset(1.0, 0.5),
              blurRadius: 5.0,
            )
          ],
        ),
        child: TextField(
          onTap: () {},
          textCapitalization: TextCapitalization.words,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontFamily: "ProximaNovaRegular"
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: IconButton(
              icon: Icon(Icons.search, color: iconColors, size: 20),
              onPressed: () {},
            ),
            hintText: "Search For Plants",
            hintStyle: TextStyle(
              color: iconColors,
              fontSize: 15.0,
              fontFamily: 'SF-Pro-Regular'
            )
          ),
        )
      )
    );
  }
}