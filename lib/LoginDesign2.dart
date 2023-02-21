import 'package:flutter/material.dart';
import 'package:talent/home_page.dart';
import 'package:talent/main.dart';

class LoginDesign extends StatefulWidget {
  const LoginDesign({super.key});

  @override
  State<LoginDesign> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/coffee.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
              Center(
              child: Image.asset('images/talent_logo.png', height: 85),
            ),
              const SizedBox(
              height: 30,
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.brown),
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.white,
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.brown),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 170,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.white, // background
                  onPrimary: Colors.blueAccent, // foreground
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const RootPage();
                        },
                      ),
                    );
                    debugPrint('Elevated Button');
                  },
                  child: Text('LOGIN')),
            ),
          ],
        ),
      ),
    );
  }
}
