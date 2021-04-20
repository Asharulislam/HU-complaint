import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/models/alert.dart';
import 'package:ui/models/departments_model.dart';
import 'package:ui/widgets/header.dart';

class DeparmentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: ListView(
          children: <Widget>[
            Header(),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 30.0),
            //   child: TextField(
            //     style: TextStyle(color: kTextColor),
            //     cursorColor: kTextColor,
            //     decoration: InputDecoration(
            //       contentPadding: EdgeInsets.all(8.0),
            //       border: InputBorder.none,
            //       fillColor: Theme.of(context).primaryColor,
            //       filled: true,
            //       hintText: "Search faculty",
            //       hintStyle: TextStyle(color: kTextColor),
            //       prefixIcon: Icon(Icons.search, color: kTextColor, size: 26.0),
            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(30.0),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(35.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "HIET Departments",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: deparmentmodel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 30.0),
                            height: 130.0,
                            width: 15.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 30.0),
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                              height: 130.0,
                              width: 326.0,
                              decoration: BoxDecoration(
                                color: kCardColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                ),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        deparmentmodel[index].title,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      SizedBox(height: 15.0),
                                      // Row(
                                      //   children: <Widget>[
                                      //     Icon(
                                      //       AntDesign.clockcircle,
                                      //       color: Theme.of(context).accentColor,
                                      //       size: 17.0,
                                      //     ),
                                      //     SizedBox(width: 10.0),
                                      //     Text(
                                      //       "${DateTime.now().weekday == alert.time.weekday ? "Today" : DateFormat.EEEE().format(alert.time)}, ${dateFormat.format(alert.time)}",
                                      //       style: TextStyle(
                                      //         color: kTextColor,
                                      //         fontSize: 15.0,
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      SizedBox(height: 10.0),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.receipt,
                                            color:
                                                Theme.of(context).accentColor,
                                            size: 17.0,
                                          ),
                                          SizedBox(width: 10.0),
                                          Text(
                                            deparmentmodel[index].subject,
                                            style: TextStyle(
                                              color: kTextColor,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getColor(BuildContext context, double percent) {
    if (percent >= 0.4) return Theme.of(context).accentColor;

    return kHourColor;
  }
}
