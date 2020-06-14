import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../constants.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;
  const TitlePriceRating({
    Key key,
    this.price,
    this.numOfReviews,
    this.rating,
    this.name,
    this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Cheese Burger",
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SmoothStarRating(
                      borderColor: kPrimaryColor,
                      rating: rating,
                      onRated: onRatingChanged,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("$numOfReviews reviews")
                  ],
                )
              ],
            ),
          ),
          priceTag(context, price: price),
        ],
      ),
    );
  }

  Container priceTag(BuildContext context, {int price}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
      height: 65,
      width: 65,
      child: Text(
        "\$$price",
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
