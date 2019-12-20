import 'package:backyard_botany/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class HomeButtons extends StatelessWidget {
  final bool isPrimaryButton;
  final IconData buttonIcon;
  final String buttonText;

  HomeButtons({this.isPrimaryButton, this.buttonIcon, this.buttonText});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /4,
      height: 75,
      decoration: isPrimaryButton ? BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: accentColor,
        boxShadow: [
          BoxShadow(
            color: accentColor,
            offset: Offset(2.0, 3.5),
            blurRadius: 10.0,
          )
        ],
      )
      : BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2.0, 3.5),
            blurRadius: 10.0,
          )
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                buttonIcon,
                color: isPrimaryButton ? Colors.white : accentColor,
                size: 30.0,
              ),
              Text(
                buttonText,
                style: TextStyle(
                  fontFamily: "SF-Pro-Semibold",
                  fontSize: 13.0,
                  color: isPrimaryButton ? Colors.white : textFieldColor                        
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
