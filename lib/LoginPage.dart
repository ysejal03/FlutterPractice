import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pillreminder2/utils/routes.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool changebutton=false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate())
    {
    setState(() {
    changebutton=true;
    });

    await Future.delayed(Duration(microseconds: 600000));
    Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changebutton = false;
    });


    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
            fit:BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height:20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column( children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                  ),
                  validator: (value){
                    if (value!.isEmpty) {
                      return "Username cannot be Empty";
                    }
                    return null;
                  },
                  onChanged:(value){
                    name = value;
                    setState(() {
                    });

                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  validator: (value){
                    if (value!.isEmpty){
                      return "Password cannot be null";
                    }
                    else if (value.length < 6){
                      return "Password length should be atleast 6";
                    }
                  }
                ),
                SizedBox(
                  height: 20,
                ),
                // ElevatedButton(onPressed:() {
                //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                // },
                // child:Text(
                //   "Login"
                // ) ,
                // style: TextButton.styleFrom(),
                // )

                InkWell(
                  onTap: () => moveToHome(context),


                  child: AnimatedContainer(

                    width: changebutton? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changebutton?Icon(Icons.done,color: Colors.white,) :Text(
                        "Login",
                        style:TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(changebutton? 50 : 8) ,
                      color: Colors.deepPurple
                    ), duration: Duration(microseconds:500000),
                  ),
                )
              ],
              ),
            )
          ]
        ),
      )
    );
  }
}
