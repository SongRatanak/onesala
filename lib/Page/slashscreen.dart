import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myonesala/Page/home_page.dart';

class SlassScreen extends StatefulWidget {
  const SlassScreen({Key? key}) : super(key: key);

  @override
  State<SlassScreen> createState() => _SlassScreenState();
}

class _SlassScreenState extends State<SlassScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade800,
      body: _SlashScreen(),
    );
  }

  Widget _SlashScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/messenger.png',
              height: 100,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            child: Text(
              "Smart Chat",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Lato',
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                if (Platform.isAndroid)
                  const CircularProgressIndicator(
                    color: Colors.white38,
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
