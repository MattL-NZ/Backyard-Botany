import 'package:backyard_botany/core/view_models/login_view_model.dart';
import 'package:backyard_botany/ui/views/base_view.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class LoginView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Image(
                        image: AssetImage('assets/images/illustration_1.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Center(
                      child: GradientText(
                        'Backyard Botany',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF01AA94),
                            Color(0xFF2CB47A),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0
                      ),
                      decoration: new InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF01AA94), width: 0.4),
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF01AA94), width: 0.4),
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        //border: ...
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0
                      ),
                      decoration: new InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF01AA94), width: 0.4),
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF01AA94), width: 0.4),
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        //border: ...
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF01AA94),
                              Color(0xFF94C73B),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(00.0))
                        ),
                        child: Center(
                          child: Text(
                              'Login',
                              style: TextStyle(fontSize: 28)
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
