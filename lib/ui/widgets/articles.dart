import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Articles extends StatelessWidget {
  final double height;
  final double width;

  const Articles({Key key, this.height, this.width}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    List<AssetImage> images = new List<AssetImage>();
    images.add(AssetImage('assets/images/article_one.png'));
    images.add(AssetImage('assets/images/article_one.png'));
    //images.add(AssetImage('assets/images/stock_image1.png'));
    //images.add(AssetImage('assets/images/stock_image1.png'));

    return  Container(
      color: Colors.red,
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index){
        return Card(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Text(
              'Hello'
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage("assets/images/article_one.png"),
                fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(5)
            ),
            alignment: Alignment.center,
          )
        );
      }, scrollDirection: Axis.horizontal,),
    );
  }
}