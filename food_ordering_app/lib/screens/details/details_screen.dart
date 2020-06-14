import 'package:flutter/material.dart';

import 'package:food_app/constants.dart';
import 'components/app_bar.dart';
import 'components/body.dart';


class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailedAppBar(context),
      body: Body(),
    );
  }
}




