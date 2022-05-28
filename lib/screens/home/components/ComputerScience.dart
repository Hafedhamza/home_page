import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../details/details_screen.dart';

class ComputerScience extends StatelessWidget {
  const ComputerScience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            child: const CScienceBookCard(
              image: 'assets/images/Java_absolute_beginners-01.png',
               author: 'HAFED',
               title: 'WINDSWEPT', 
               price: 50,
            ),
            onTap:(){
                 Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                    ),
                  );
               },
          ),
          GestureDetector(
            child: const CScienceBookCard(
              image: 'assets/images/Practical_guide_to_learnSQL.jpg',
               author: 'HAFED',
               title: 'OK', 
               price: 50,
            ),
            onTap:(){
                 Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                    ),
                  );
               },
          ),
          GestureDetector(
            child: const CScienceBookCard(
              image: 'assets/images/The_art_of_creative_thinking.jpg',
               author: 'HAFED',
               title: 'WINDSWEPT', 
               price: 50,
            ),
            onTap:(){
                 Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                    ),
                  );
               },
          ),
          GestureDetector(
            child: const CScienceBookCard(
              image: 'assets/images/firstbook.png',
               author: 'HAFED',
               title: 'WINDSWEPT', 
               price: 50,
            ),
            onTap:(){
                 Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                    ),
                  );
               },
          ),
          GestureDetector(
            child: const CScienceBookCard(
              image: 'assets/images/firstbook.png',
               author: 'HAFED',
               title: 'WINDSWEPT', 
               price: 50,
            ),
            onTap:(){
                 Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                    ),
                  );
               },
          ),
        ],
      ),
    );
  }
}

class CScienceBookCard extends StatelessWidget {
  const CScienceBookCard({
    Key? key,  
    required this.image, 
    required this.title, 
    required this.author, 
    required this.price,
  }) : super(key: key);
  final String image, title , author;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding , 
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
        ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: const Radius.circular(10),
                  bottomRight: const Radius.circular(10),
                ),
                boxShadow: [BoxShadow(
                  offset: const Offset(0,10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.3),
          
                )]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                          text: "$author".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          )
                          )
                      ],
                      ),
                    ),
                    const Spacer(),
                    Text("\$$price",
                    style: Theme.of(context).textTheme.button?.copyWith(color: Colors.green),
                    )
                ],
              ),
            ),
              ],
              ),
          );
  }
}