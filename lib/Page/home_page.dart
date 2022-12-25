import 'package:flutter/material.dart';
import 'package:myonesala/auths/fotget_password_screen.dart';
import 'package:myonesala/auths/register_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                      child: Text("Login To",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        "Smart Chat connect the world",
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
                  Container(
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.lock_outline),
                        fillColor: Colors.white54,
                        labelText: "Password",
                        border: InputBorder.none,
                        hintText: "Enter Passord",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ForgetPassword()));
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        child: _BuildButton(),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget _BuildButton() {
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
                child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>RegisterScreen()));
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
