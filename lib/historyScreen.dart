import 'package:flutter/material.dart';

import 'leaderboard.dart';
import 'style.dart';

class historyScreen extends StatefulWidget {
  @override
  _historyScreenState createState() => _historyScreenState();
}

class _historyScreenState extends State<historyScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
        ),
        Container(
          child: Image.asset("assets/images/intersection1.png"),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: body(),
          ),
        ),
      ],
    );
  }

  Widget body() {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: 3.0, // has the effect of extending the shadow
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0, left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "نقطة",
                        style: profitCurrncy,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "٥٠",
                        style: profitMoney,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  Text(
                    "ربحك الحالي هو",
                    style: profitBoxtitlie,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return cardMonth();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardMonth() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return leaderboard();
                },
              ),
            ); //
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0, left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "١٢ محرم ١٤٤١",
                    style: profitCurrncy,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "١٠ نقاط",
                    style: profitCurrncy,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "تحدي الملابس",
                    style: profitCurrncy,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
