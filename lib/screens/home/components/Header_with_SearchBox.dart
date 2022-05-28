import 'package:flutter/material.dart';

import '../../../colors.dart';
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5 ),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              )
            ),
          child: Row(
            children: [
              Text(" Hi Student",
              style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Image.asset("assets/images/logoapp.png"),
            ],
          ),
          padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding , bottom: 36 + kDefaultPadding,),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              height: 54,
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                   offset: const Offset(0, 10),
                   blurRadius: 50,
                   color: kPrimaryColor.withOpacity(0.23)
                  ),
                ],
                ),
                
              child: TextField(
                decoration: InputDecoration(
                  hintText: "    Search",
                  hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5),),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Image.asset("assets/icons/search.png"),

                ),
              ),
            )
            ),
        ],
      ),
    );
  }
}