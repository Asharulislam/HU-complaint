import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:intl/intl.dart';
import 'package:ui/constants.dart';
import 'package:ui/models/alert.dart';
import 'package:ui/screens/deparments_list.dart';
import 'package:ui/widgets/countdown_painter.dart';

class RecentsAlerts extends StatelessWidget {
  final DateFormat dateFormat = DateFormat("hh:mm a");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DeparmentsList()),
        );
      },
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: recentAlerts.length,
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
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            recentAlerts[index].title,
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
                                color: Theme.of(context).accentColor,
                                size: 17.0,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                recentAlerts[index].subject,
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
    );
  }

  _getColor(BuildContext context, double percent) {
    if (percent >= 0.4) return Theme.of(context).accentColor;

    return kHourColor;
  }
}
