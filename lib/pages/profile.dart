import 'package:flutter/material.dart';
import 'package:loginpage/pages/LoginScreen.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.grey,
            child: Container(
              width: 150,
              height: 100,
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: ClipOval(
                child: Image(
                  image: AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
              ),
            ),
          ),
          ProfileText(
            profile: 'Account',
          ),
          ProfileText(
            profile: 'Notifications',
          ),
          ProfileText(
            profile: 'Language',
          ),
          ProfileText(
            profile: 'Contact us',
          ),
          ProfileText(
            profile: 'Settings',
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
            padding: EdgeInsets.only(left: 15, right: 15),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Login',
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileText extends StatelessWidget {
  const ProfileText({
    Key? key,
    required this.profile,
  }) : super(key: key);
  final String profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
      padding: EdgeInsets.only(left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            profile,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
          )
        ],
      ),
    );
  }
}
