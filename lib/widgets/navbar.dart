import 'package:flutter/material.dart';
import 'package:loginpage/ListProduct/ListProduct_screen.dart';
import 'package:loginpage/ListProduct/ListProduct_screen2.dart';
import 'package:loginpage/pages/profile.dart';

class AppBarAll extends StatelessWidget {
  const AppBarAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListProduct(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  Text(
                    "home",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 5),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => listProduct2(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.category,
                    color: Colors.grey,
                  ),
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.supervised_user_circle_sharp,
                    color: Colors.grey,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}