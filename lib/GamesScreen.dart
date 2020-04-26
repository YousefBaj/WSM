import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wsm/style.dart';

import 'my_flutter_app_icons.dart';
import 'questionScreen.dart';

class GamesScreen extends StatefulWidget {
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradentColors)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return card(index + 1);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//card widget
  Widget card(int index) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Image.asset(
                  "assets/images/image-${index}.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 23,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffF1841C),
                    radius: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Icon(
                        MyFlutterApp.tshirt_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "تحدي الملابس",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    "تعرف على أصناف الملابس وأشكالها واربح المال ",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 13,
                      color: Color.fromRGBO(0, 0, 0, 0.60),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "٣٣٩ مشترك",
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontFamily: 'Cairo',
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.person,
                      color: Color(0xff666666),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "٣٠ سؤال",
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontFamily: 'Cairo',
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.help,
                      color: Color(0xff666666),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Divider(
                    thickness: 0.2,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "تعرف على",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(MyFlutterApp.transgender_solid),
                          Text(
                            'الجنس',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 14,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ],
                      ),
                      height: 40,
                      width: 90,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            MyFlutterApp.tshirt_solid,
                            size: 20,
                          ),
                          Text(
                            'نوع الملابس',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 14,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ],
                      ),
                      height: 40,
                      width: 105,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.invert_colors),
                          Text(
                            'اللون',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 14,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ],
                      ),
                      height: 40,
                      width: 90,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "الوقت",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.timer),
                      Text(
                        '٣٠ د',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 14,
                          color: Color.fromRGBO(0, 0, 0, 0.8),
                        ),
                      ),
                    ],
                  ),
                  height: 40,
                  width: 90,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      child: FloatingActionButton.extended(
                        heroTag: index,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return questionScreen();
                              },
                            ),
                          ); // Add your onPressed code here!
                        },
                        elevation: 0,
                        label: Text(
                          'إبدأ التحدي',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        icon: Icon(Icons.whatshot),
                        backgroundColor: Color(0xff8176DE),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
