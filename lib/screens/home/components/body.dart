import 'package:flutter/material.dart';
import 'package:home_page/colors.dart';
import 'package:home_page/screens/home/components/ComputerScience.dart';

import 'Header_with_SearchBox.dart';
import 'Recomend_books.dart';
import 'Title_with_more_Button.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: "Recomended", press: (){}),
          RecomendBooks(),
          TitleWithMoreButton(title: "Computer Science", press: (){}),
          ComputerScience(),
        ],
      ),
    );
  }
}

