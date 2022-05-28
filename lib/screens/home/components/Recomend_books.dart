import 'package:flutter/material.dart';
import 'package:home_page/screens/details/details_screen.dart';

import '../../../colors.dart';

class RecomendBooks extends StatelessWidget {
  const RecomendBooks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            child: const RecomendedBookCard(
              image: 'assets/images/Atteindre_l_excellence.jpg',
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
            child: const RecomendedBookCard(
              image: 'assets/images/power_of_habits.jpg',
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
            child: const RecomendedBookCard(
              image: 'assets/images/Marketing_Strategy.jpg',
               author: 'Palmatier',
               title: 'Robert W',  
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
            child: const RecomendedBookCard(
              image: 'assets/images/smart_thinking.jpg',
               author: 'ALLEN',
               title: 'Matthew',
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
            child: const RecomendedBookCard(
              image: 'assets/images/Les_miserables.jpg',
               author: 'Hugo',
               title: 'Victor',
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

class RecomendedBookCard extends StatelessWidget {
  const RecomendedBookCard({
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
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
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
