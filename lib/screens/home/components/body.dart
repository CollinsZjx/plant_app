import 'package:flutter/material.dart';
import 'feature_plants.dart';
import 'package:plant_app/constants.dart';
import 'recommend_plants.dart';
import 'title_with_more_btn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recommended', press: () {}),
          RecommendPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          FeaturePlants(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
