import 'package:flutter/material.dart';

class joblistPage extends StatefulWidget {
  const joblistPage({super.key});

  @override
  State<joblistPage> createState() => _joblistPageState();
}

class _joblistPageState extends State<joblistPage> {
  final List<String> entries = <String>[
    'Data Scrape With 100% Verified Email Address',
    'Computer Programmer',
    'REACT JS DEVELOPER HIRING',
    'Marketing',
    'PYTHON SENIOR DEV'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0,10, 0, 0),
            padding:const EdgeInsets.all(10.0),
            child: TextField(
               decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Search Jobs',
              ),
            ),
          ),
          const Divider(
            color: Colors.blueAccent,
            thickness: 1.0,
          ),
             Expanded(
              child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            "${entries[index]}",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.italic),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            "Hourly: \$40-50 dollars",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.italic),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            "Experience Level: Intermediate",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.italic),
                          )),
                    ),
                  ]),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Colors.blueAccent,
                thickness: 1.0,
              ),
            )),
        
        ],
      ),
    );
  }
}
