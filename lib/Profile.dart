import 'package:flutter/material.dart';

import 'style.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
        ),
        Container(
          child: Image.asset("assets/images/intersection.png"),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(child: body()),
          ),
        ),
      ],
    );
  }

  Widget body() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 79,
              height: 79,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2.0, // has the effect of softening the shadow
                    spreadRadius: 2.0, // has the effect of extending the shadow
                  )
                ],
              ),
              child: CircleAvatar(
                child: Image.asset("assets/images/av9.png"),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "مرحبا",
                  style: profileHello,
                ),
                Text(
                  "يوسف",
                  style: profileName,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 100,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "هناك العديد من التحديات القادمة قريبا ",
                  style: profileNotfy,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Color(0xffAF29BA),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "اضغط هنا لتحصل على التنبيهات",
                      style: profileNotfy,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print('33');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.width * 0.37,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: gradentColors),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "إجاباتك",
                            style: profileBoxtitlie,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset("assets/images/checklist.png"),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "سؤال",
                          style: profileCurrncy,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "٣٠٠",
                          style: profileMoney,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            GestureDetector(
              onTap: () {
                // Add you
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.width * 0.37,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: gradentColors),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "ربحك",
                            style: profileBoxtitlie,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 26,
                            height: 27,
                            child: Image.asset("assets/images/money.png"),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "ريال",
                          style: profileCurrncy,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "٤٨",
                          style: profileMoney,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print('33');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.width * 0.37,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: gradentColors),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "تحدياتك",
                            style: profileBoxtitlie,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            child: Image.asset("assets/images/fire.png"),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "تحدي",
                          style: profileCurrncy,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "٤٠",
                          style: profileMoney,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.40,
              height: MediaQuery.of(context).size.width * 0.37,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: gradentColors),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "نقاطك",
                          style: profileBoxtitlie,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 26,
                          height: 27,
                          child: Image.asset("assets/images/coin.png"),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "نقطة",
                        style: profileCurrncy,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "٨٠٠",
                        style: profileMoney,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
