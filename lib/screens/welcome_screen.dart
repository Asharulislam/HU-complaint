import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/constants.dart';
import 'package:ui/screens/sign_in.dart';
import 'package:ui/widgets/bottom_navigation.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                left: 50.0,
                right: 50.0,
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      child: Image.asset(
                        "assets/images/hulogo.png",
                        height: 180.0,
                        width: 180.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hamdard University",
                      style: TextStyle(
                        color: kprimarycolor,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                // bottom: MediaQuery.of(context).size.height*0.1,
                left: 50.0,
                right: 50.0,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Welcome to HU complaint",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Register your compalint here",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height - 130,
                left: 85.0,
                right: 85.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Signin()),
                    );
                  },
                  child: Container(
                    width: 150.0,
                    height: 55.0,
                    padding: EdgeInsets.only(left: 40.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Theme.of(context).accentColor,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "GET STARTED",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                          size: 28.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
