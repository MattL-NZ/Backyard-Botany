import 'package:backyard_botany/core/view_models/home_view_model.dart';
import 'package:backyard_botany/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class DiscoverView extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.green,
          body: Container(
            child: Center(
              child: Text(
                'DISCOVER'
              ),
            ),
          )
      ),
    );
  }
}