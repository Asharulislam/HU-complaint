import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            "assets/images/hulogo.png",
            height: 70.0,
          ),
          Text(
            "HU Complaint",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          // CircleAvatar(
          //   radius: 25.0,
          //   backgroundImage: AssetImage("assets/images/profile_pic.jpg"),
          // ),
        ],
      ),
    );
  }
}
