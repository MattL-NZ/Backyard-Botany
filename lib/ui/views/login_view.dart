import 'package:backyard_botany/core/view_models/login_view_model.dart';
import 'package:backyard_botany/ui/shared/app_colors.dart' as prefix0;
import 'package:backyard_botany/ui/shared/spacers.dart';
import 'package:backyard_botany/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacers.verticalSpace(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: prefix0.textTitleColor,
                        fontFamily: "SF-Pro-Bold"
                      ),
                    ),
                  ),
                  Spacers.verticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      "Let's learn more about plants...",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: prefix0.textMainColor,
                        fontFamily: "SF-Pro-Regular"
                      ),
                    ),
                  ),                  
                  Spacers.verticalSpace(40),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SP-Pro-Medium',
                        color: prefix0.textTitleColor
                      ),
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: 'Username',
                        labelStyle: TextStyle(
                           color: prefix0.textFieldColor
                        ),
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: prefix0.lineColor),   
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: prefix0.accentColor),
                        ),
                        contentPadding: EdgeInsets.only(bottom: 15.0)  
                      ),
                    )
                  ),
                  Spacers.verticalSpaceSmall(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SP-Pro-Medium',
                        color: prefix0.textTitleColor
                      ),
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: 'Password',
                        labelStyle: TextStyle(
                           color: prefix0.textFieldColor
                        ),
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: prefix0.lineColor,),   
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: prefix0.accentColor),
                        ),  
                      ),
                      obscureText: true,
                    ),
                  ),
                  Spacers.verticalSpaceMedium(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[ 
                        Row(
                          children: <Widget>[
                            Text(
                              "Remember me",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: prefix0.textFieldColor,
                                fontFamily: 'SF-Pro-Medium'
                              ),
                            ),
                            Checkbox(
                              value: false,
                              //onChanged: null,
                            ),  
                          ],
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: prefix0.textFieldColor,
                            fontFamily: 'SF-Pro-Medium'
                          ),
                        ),
                      ],
                    )
                  ),
                  Spacers.verticalSpaceMedium(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50.0,
                          color: prefix0.accentColor,
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "SF-Pro-Bold"
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacers.verticalSpaceSmall(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontSize: 14.00,
                              color: prefix0.textFieldColor,
                              fontFamily: 'SF-Pro-Regular'
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            " Sign Up",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: prefix0.accentColor,
                              fontFamily: 'SF-Pro-Bold'
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
