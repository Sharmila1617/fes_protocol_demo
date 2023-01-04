import 'dart:async';
import 'package:fes_protocol_demo/nav_bar.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 5),
            ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => NavBar()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(70), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(100), // Image radius
                  child: Image.asset('images/fes_logo.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                   child: Text(
                  'Future Embedded Solution',
                  style: TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 2.5,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
