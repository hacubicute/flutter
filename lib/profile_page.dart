import 'package:flutter/material.dart';
import 'package:talent/NavigationDrawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(48), // Image radius
                    child: Image.asset('images/hacs.jpg', fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Text(
              "Justin Rollo",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic),
            ),
            Divider(
              color: Colors.blueAccent,
              thickness: 1.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    "Languages",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 5, 0, 0),
              child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    "English,Tagalog",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                    ),
                  )),
            ),
            Divider(
              color: Colors.blueAccent,
              thickness: 1.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    "BIO",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                    ),
                  )),
            ),
            Divider(
              color: Colors.blueAccent,
              thickness: 1.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    "Education",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 5, 0, 0),
              child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    "- Lorma Colleges 2016-2020",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                    ),
                  )),
            ),
            Divider(
              color: Colors.blueAccent,
              thickness: 1.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    "Skills",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 5, 0, 0),
              child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    "PHP,AJAX,HTML,JAVA,REACTJS",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
