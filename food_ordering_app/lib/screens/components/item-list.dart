import 'package:flutter/material.dart';
import 'package:food_app/screens/details/details_screen.dart';

import 'item-card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopName: "McDonalds",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/chinese_noodles.svg",
            title: "Chinese Noodles",
            shopName: "Noodles",
          ),
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopName: "McDon",
          )
        ],
      ),
    );
  }
}
