import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child:ListView(

          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,

                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child:
                UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/me.jpg'),
                  ),
                  accountEmail: Text("sejalyadav03@gmail.com", style: TextStyle(
                    color: Colors.white
                  ),),
                  accountName: Text("Sejal Yadav" ,style: TextStyle(
                      color: Colors.white
                  ),),
            )),
            ListTile(
              leading: Icon(CupertinoIcons.home ,color: Colors.black,),

              title: Text(
                "Home",textScaleFactor:1.2,style: TextStyle(
                color: Colors.black)
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.graph_square ,color: Colors.black,),

              title: Text(
                  "Analysis",textScaleFactor:1.2,style: TextStyle(
                  color: Colors.black)
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.alarm,color: Colors.black,),

              title: Text(
                  "Reminders",textScaleFactor:1.2,style: TextStyle(
                  color: Colors.black)
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.black,),

              title: Text(
                  "Feedback",textScaleFactor:1.2,style: TextStyle(
                  color: Colors.black)
              ),
            ),
          ],

        )
      ),
    );
  }
  
}