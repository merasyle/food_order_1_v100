import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:food_app/components/search-box.dart';
import 'category-list.dart';
import 'discount-card.dart';
import 'item-list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          DiscountCard()
        ],
      ),
    );
  }
}