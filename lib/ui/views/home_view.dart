import 'package:backyard_botany/core/view_models/login_view_model.dart';
import 'package:backyard_botany/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class HomeView extends BaseView {
 @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.green,
          body: Container()
      ),
    );
  }
}