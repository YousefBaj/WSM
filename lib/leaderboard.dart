import 'package:flutter/material.dart';

import 'style.dart';

class leaderboard extends StatefulWidget {
  @override
  _leaderboardState createState() => _leaderboardState();
}

class _leaderboardState extends State<leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradentColors,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: null,
          title: Text(
            'النتائج',
            style: TextStyle(
                fontFamily: 'Cairo',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: Color(0xff8545A3),
        ),
        body: Column(
          children: [
            Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1.0, // has the effect of softening the shadow
                    spreadRadius: 1.0, // has the effect of extending the shadow
                    offset: Offset(
                      0.0, // horizontal, move right 10
                      10.0, // vertical, move down 10
                    ),
                  )
                ],
                color: Color(0xff8545A3),
              ),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color(0xffFFD949),
                        Color(0xffFEE972),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Image.asset("assets/images/top.png"),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'إربح ١٠ ريال لكل ١٠٠ أسئلة',
                            style: TextStyle(
                                color: Color(0xff333333),
                                fontFamily: 'Cairo',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '! لا مجال للخسارة في لعبتنا هنا الجميع يربح',
                            style: TextStyle(
                              color: Color(0xff232223),
                              fontFamily: 'Cairo',
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Text(
                            'ساعد مجتمع علماء البيانات لتفوز',
                            style: TextStyle(
                              color: Color(0xff232223),
                              fontFamily: 'Cairo',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return winCard(index + 1);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget winCard(int index) {
    Color color1 = Colors.white;
    Color color2 = Colors.white;
    int imageNum = (index % 8) + 1;
    Widget trophy = Text(
      "${index}",
      style: TextStyle(
          color: Color(0xff333333), fontSize: 10, fontWeight: FontWeight.bold),
    );
    if (index == 1) {
      color1 = Color(0xffFFD949);
      color2 = Color(0xffFEE972);
      trophy = Image.asset("assets/images/award-${index}.png");
    } else if (index == 2) {
      color1 = Color(0xffD3D3D3);
      color2 = Color(0xffD3D3D3);
      trophy = Image.asset("assets/images/award-${index}.png");
    } else if (index == 3) {
      color1 = Color(0xffF2AD6F);
      color2 = Color(0xffF2AD6F);
      trophy = Image.asset("assets/images/award-${index}.png");
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.60,
        height: 70,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              color1,
              color2,
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0, // has the effect of softening the shadow
              spreadRadius: 2.0, // has the effect of extending the shadow
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "الربح",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 18,
                          height: 17,
                          child: Image.asset("assets/images/money.png"),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    '٤٠٠ ريال',
                    style: TextStyle(fontSize: 16, fontFamily: 'Cairo'),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "الاجابات",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 18,
                          height: 17,
                          child: Image.asset("assets/images/checklist.png"),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    '٣٠ إجابة',
                    style: TextStyle(fontSize: 16, fontFamily: 'Cairo'),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "الوقت",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 18,
                          height: 17,
                          child: Image.asset("assets/images/clock.png"),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    '٣٣ د',
                    style: TextStyle(fontSize: 16, fontFamily: 'Cairo'),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          blurRadius:
                              1.0, // has the effect of softening the shadow
                          spreadRadius:
                              1.0, // has the effect of extending the shadow
                        )
                      ],
                    ),
                    width: 40,
                    height: 40,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset("assets/images/av$imageNum.png"))),
                Container(
                  margin: EdgeInsets.only(left: 25, bottom: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 6,
                      child: trophy,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
