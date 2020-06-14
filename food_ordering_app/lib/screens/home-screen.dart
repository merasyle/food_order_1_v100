import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:food_app/constants.dart';
import 'components/app_bar.dart';
import 'components/body.dart';
import 'details/components/bottom-nav-bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: homeAppBar(context),
        bottomNavigationBar: BottomNavBar(),
        body: Body(),
    );
  }
}

