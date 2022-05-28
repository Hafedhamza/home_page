import 'package:flutter/material.dart';

import '../colors.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: kDefaultPadding * 2,
        left: kDefaultPadding * 2
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          offset: Offset(0, -10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.4)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(onPressed: (){}, icon: Image.asset("assets/icons/flower.png")),
          IconButton(onPressed: (){}, icon: Image.asset("assets/icons/heart-icon.png")),
          IconButton(onPressed: (){}, icon: Image.asset("assets/icons/user-icon.png"))
        ],
      ),
    );
  }
} 