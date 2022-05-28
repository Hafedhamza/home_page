import 'package:flutter/material.dart';
import 'package:home_page/screens/details/details_screen.dart';
import '../../../colors.dart';
class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key, required this.title, required this.press,
  }) : super(key: key);
  final String title ;
  final Function press ;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding / 4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: <Widget>[
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            const Spacer(),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                ),
              color: kPrimaryColor,
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                  ),
                );
              }, 
              child: const Text("more", style: TextStyle(color: Colors.white),), 
              ),
          ],
        ),
      ),
    );
  }
}

