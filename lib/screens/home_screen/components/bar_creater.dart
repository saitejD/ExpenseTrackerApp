import 'package:ExpenseTracker/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

final Color activeColor = Color(0xffFF2E63);
final Color inactiveColor = Color(0xff6C73AE);

class Bar extends StatelessWidget {
  final double fill;
  final String day;
  final Color color;

  Bar({this.fill, this.day, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 5,
            height: MediaQuery.of(context).size.height * 0.22,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: inactiveColor),
            child: FractionallySizedBox(
              heightFactor: fill,
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: color,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            day,
            style: kFormatTitle,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
