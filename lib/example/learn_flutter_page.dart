import 'package:flutter/material.dart';

class LearnFlutterpage extends StatefulWidget {
  const LearnFlutterpage({super.key});

  @override
  State<LearnFlutterpage> createState() => _LearnFlutterpageState();
}

class _LearnFlutterpageState extends State<LearnFlutterpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn More'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/talent.png'),
          const SizedBox(
            height: 40,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin:const EdgeInsets.all(10.0),
            padding:const EdgeInsets.all(10.0),
            width: double.infinity,
            height: 50,
            color: Colors.amber,
            child: Center(
              child: const Text(
                "Test",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
             debugPrint('Elevated Button');
          }, child: Text('Elevated Button')),
           OutlinedButton(onPressed: () {
             debugPrint('Elevated Button');
          }, child: Text('Outlined Button')),
             TextButton(onPressed: () {
             debugPrint('Elevated Button');
          }, child: Text('Text Button'))
        ],
      ),
    );
  }
}
