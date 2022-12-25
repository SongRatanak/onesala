import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myonesala/Page/home_page.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 120,
            left: 15,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Register",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        "New Account",
                        style: TextStyle(fontSize: 20,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 200,
              left: 15,
              right: 15,
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      cursorHeight: 10,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.perm_identity),
                        fillColor: Colors.white54,
                        labelText: "Name",
                        border: InputBorder.none,
                        hintText: "Enter username",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextFormField(
                      cursorHeight: 10,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.email_outlined),
                        fillColor: Colors.white54,
                        labelText: "Email",
                        border: InputBorder.none,
                        hintText: "Enter email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.phone_android_sharp),
                        fillColor: Colors.white54,
                        labelText: "Phone",
                        border: InputBorder.none,
                        hintText: "Phone Number",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextFormField(
                      cursorHeight: 10,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.email_outlined),
                        fillColor: Colors.white54,
                        labelText: "Email",
                        border: InputBorder.none,
                        hintText: "Enter email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        child: _BuildButton(context),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );

  }
  Widget _BuildButton(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow.shade800,
                minimumSize: Size(400, 45)),
            child: Text(
              "Sign in",
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/facebook.png',
                    height: 20,
                  ),
                  style: ElevatedButton.styleFrom(minimumSize: Size(400, 45)),
                  label: Text("Sign in with facebook",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black))),
            ],
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Do you have any account ?"),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    child: Text("login",style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MyHomePage()));
                    },
                  )
                ],
              ),

            )
          ],
        )
      ],
    );
  }

}
