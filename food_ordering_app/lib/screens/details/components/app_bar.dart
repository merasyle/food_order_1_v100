import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/home-screen.dart';

AppBar detailedAppBar(context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/share.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/more.svg"),
          onPressed: () {},
        ),
      ],
    );
  }