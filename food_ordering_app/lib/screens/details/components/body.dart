import 'package:flutter/material.dart';
import 'package:food_app/components/item-image.dart';
import 'package:food_app/constants.dart';

import 'order-button.dart';
import 'title-price-rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopName(name: "McDonalds Mega Center"),
          TitlePriceRating(
            name: 'Cheese Burger',
            rating: 4,
            numOfReviews: 24,
            price: 15,
            onRatingChanged: (value) {},
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
            style: TextStyle(height: 1.5),
          ),
          SizedBox(height: 30),
          OrderButton(size: size),
        ],
      ),
    );
  }

  Row shopName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(name),
      ],
    );
  }
}