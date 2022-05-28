import 'package:flutter/material.dart';
import 'package:home_page/colors.dart';
import 'package:home_page/screens/home/components/body.dart';

import '../../components/My_Bottom_NavBar.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppbar(),
      body: body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar BuildAppbar() {
    return AppBar(
      elevation: 0, 
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        onPressed: () {}, 
        icon: Image.asset("assets/icons/about.png"),
      )
    );
  }
}
