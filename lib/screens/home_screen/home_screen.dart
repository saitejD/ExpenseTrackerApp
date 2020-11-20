import 'dart:math';

import 'package:ExpenseTracker/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Color activeColor = Color(0xffFF2E63);
final Color inactiveColor = Color(0xff6C73AE);

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool income = true;
  void alterChoice() {
    setState(() {
      income = !income;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(
                //   "< Back",
                //   style: TextStyle(color: activeColor, fontSize: 20),
                // ),
                CircleAvatar(
                  backgroundColor: Color(0xff0E164C),
                  child: IconButton(
                      color: activeColor,
                      icon: Icon(
                        Icons.clear_all,
                      ),
                      onPressed: () {}),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Current Balence",
                  style: TextStyle(color: inactiveColor, fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  "\$24,374",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Color(0xff0B16C),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: income ? kActiveButton : null,
                          child: FlatButton(
                              onPressed: () => alterChoice(),
                              child: Text("Income",
                                  style: income
                                      ? kActiveButtonStyle
                                      : kInactiveButtonStyle)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 5),
                                decoration: income ? null : kActiveButton,
                                child: FlatButton(
                                  onPressed: () => alterChoice(),
                                  child: Text("Expense",
                                      style: income
                                          ? kInactiveButtonStyle
                                          : kActiveButtonStyle),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Day",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 5,
                                width: 20,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                        Text(
                          "Week",
                          style: kFormatTitle,
                        ),
                        Text(
                          "Month",
                          style: kFormatTitle,
                        ),
                        Text(
                          "Year",
                          style: kFormatTitle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Bar(
                          color: Colors.green,
                          day: "Mon",
                          fill: 0.5,
                        ),
                        Bar(
                          color: Colors.red,
                          day: "Tue",
                          fill: 0.7,
                        ),
                        Bar(
                          color: Colors.green,
                          day: "Wed",
                          fill: 0.35,
                        ),
                        Bar(
                          color: Colors.red,
                          day: "Thu",
                          fill: 0.89,
                        ),
                        Bar(
                          color: Colors.green,
                          day: "Fri",
                          fill: 0.12,
                        ),
                        Bar(
                          color: Colors.red,
                          day: "Sat",
                          fill: 0.42,
                        ),
                        Bar(
                          color: Colors.green,
                          day: "Sun",
                          fill: 0.59,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Color(0xffFFEAC5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 5,
                            width: 100,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (ctx) => DetailsScreen()));
                            },
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  width:
                                      MediaQuery.of(context).size.height * 0.13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child:
                                        Image.asset('assets/images/user.jpg'),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sai Tej",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.08,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.08,
                                          padding: EdgeInsets.all(10),
                                          child: CustomPaint(
                                            size: Size.infinite,
                                            painter: CirclePainter(),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Your Card limit",
                                              style: TextStyle(
                                                  color: Color(0xff9F7D43),
                                                  fontSize: 18),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "\$5,807 of \$9,354",
                                              style: TextStyle(fontSize: 18),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

final kActiveButton =
    BoxDecoration(color: activeColor, borderRadius: BorderRadius.circular(10));

final kActiveButtonStyle = TextStyle(color: Colors.white, fontSize: 18);

final kInactiveButtonStyle = TextStyle(color: inactiveColor, fontSize: 18);

final kFormatTitle = TextStyle(color: inactiveColor, fontSize: 16);

class Bar extends StatelessWidget {
  double fill;
  String day;
  Color color;

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

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect drawingRect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);

    final Paint paint2 = Paint();
    paint2.color = const Color(0xff9F7D43).withOpacity(0.3);
    paint2.style = PaintingStyle.stroke;
    paint2.strokeWidth = 7;

    final Paint higlight = Paint();
    higlight.color = activeColor;
    higlight.style = PaintingStyle.stroke;
    higlight.strokeCap = StrokeCap.round;
    higlight.strokeWidth = 7;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint2);
    canvas.drawArc(drawingRect, -pi / 2 + 0.35, pi - 0.35, false, higlight);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
