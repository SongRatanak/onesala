import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myonesala/Page/home_page.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _SignInPage(context),
    );
  }

  Widget _SignInPage(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 200,
            left: 15,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Forgot",
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
                        "Password",
                        style: TextStyle(fontSize: 20, fontFamily: 'Lato'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 300,
              left: 15,
              right: 15,
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      cursorHeight: 10,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.email_outlined),
                        fillColor: Colors.white54,
                        labelText: "Email",
                        border: InputBorder.none,
                        hintText: "Enter Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          "Please provide your email to reset your password. Please don't share any data to other people",
                          style: TextStyle(
                            fontSize: 11,
                              color: Colors.black,
                             ),
                        ),
                      )
                    ],
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Remember Now ?"),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    child: Text("Login here",style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MyHomePage()));
                    },
                  )
                ],
              ),

            )
          ],
        ),
        Padding(padding: EdgeInsets.all(100)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Remember Now ?",style: TextStyle(fontWeight: FontWeight.bold),),
            ),


          ],
        ),
      ],
    );
  }
}
