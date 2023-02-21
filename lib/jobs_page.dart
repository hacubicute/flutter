import 'package:flutter/material.dart';
import 'package:talent/NavigationDrawer.dart';
import 'package:talent/job_list.dart';


class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  
  @override
   Widget build(BuildContext context) {   
    return Scaffold(
    drawer: NavigationDrawer(),
     appBar: AppBar(
        centerTitle: true,
        title: Text("Jobs"),
      ), 
      body:joblistPage(),
    
    
    );
  }
}