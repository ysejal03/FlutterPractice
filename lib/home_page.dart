import 'package:flutter/material.dart';
import 'package:pillreminder2/Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
            title: Text("Pill Reminder", style: TextStyle(
              color: Colors.white
            ),)
        ),
        body: Center(
            child: Text("Hello")
        ),
      drawer: MyDrawer(

      ),
    );
  }
}
