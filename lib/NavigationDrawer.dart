import 'package:flutter/material.dart';
import 'package:talent/BankProfile.dart';
import 'package:talent/Card.dart';
import 'package:talent/LoginDesign.dart';
import 'package:talent/ProductList.dart';
import 'package:talent/ProductPage.dart';
import 'package:talent/Screens/ProfileScreen.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
}

Widget buildHeader(BuildContext context) => Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
            Color.fromRGBO(192, 57, 43,20),
            Color.fromRGBO(142, 68, 173,20)
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ClipOval(
            child: SizedBox.fromSize(
              size: Size.fromRadius(48), // Image radius
              child: Image.asset('images/hacs.jpg', fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Justin Rollo",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          Text(
            "demonhacubi@gmail.com",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
    );

Widget buildMenuItems(BuildContext context) => Column(
      children: [
        ListTile(
          leading: const Icon(Icons.android_rounded),
          title: const Text('LOGIN DESIGN'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const LoginDesign();
                },
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.android_rounded),
          title: const Text('PROFILE DESIGN'),
          onTap: () {

              Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return ProfileScreen();
                },
              ),
            );

          },
        ),
        ListTile(
          leading: const Icon(Icons.android_rounded),
          title: const Text('BANK PROFILE'),
          onTap: () {
              Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const BankProfile();
                },
              ),
            );

          },
        ),
        ListTile(
          leading: const Icon(Icons.android_rounded),
          title: const Text('Products Page'),
          onTap: () {
              Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return  MyApp();
                },
              ),
            );

          },
        )
      ],
    );
