import 'package:ExpenseTracker/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash.png'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Text(
                    "It's your\nMoney\nOwn it",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 40),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 20),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            CupertinoPageRoute(builder: (ctx) => HomeScreen()),
                            (route) => false);
                      },
                      child: Text(
                        "Start >",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
