import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendPlantCard(
            image: 'assets/images/1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/2.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/3.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/4.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/5.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/6.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/7.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/8.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/9.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/10.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/11.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              _navigator(context);
            },
          ),
        ],
      ),
    );
  }
}

void _navigator(context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailsScreen(),
    ),
  );
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding,
        left: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(image),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: '$country'.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
