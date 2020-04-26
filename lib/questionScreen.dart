import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:wsm/multiplechoiceQuestion.dart';

import 'DrawQuestion.dart';
import 'questions.dart';
import 'style.dart';

class questionScreen extends StatefulWidget {
  @override
  _questionScreenState createState() => _questionScreenState();
}

class _questionScreenState extends State<questionScreen> {
  List<Offset> _points = <Offset>[];
  int counter = 0;
  double xmin = double.infinity, ymin = double.infinity, xmax = 0, ymax = 0;
  String time = "00:00";
  double percentage = 0.0;
  Stopwatch stopwatch = new Stopwatch();
  Timer timer;
  bool _isButtonDisabled;
  bool _isSelectedans1;
  bool _isSelectedans2;
  @override
  void initState() {
    // TODO: implement initState
    _isButtonDisabled = true;
    _isSelectedans1 = false;
    _isSelectedans2 = false;
    stopwatch.start();
    timerRunn();
    super.initState();
  }

  void clear() {
    setState(() {
      xmin = double.infinity;
      ymin = double.infinity;
      xmax = 0;
      ymax = 0;

      _isButtonDisabled = true;
      _points.clear();
    });
  }

  List<DrawQuestion> question = [
    DrawQuestion(
        question: "ارسم مكان الجينز ", image: "assets/images/test1.jpg"),
    DrawQuestion(
        question: "ارسم مكان الجينز ", image: "assets/images/image-2.png"),
    DrawQuestion(
        question: "ارسم مكان الجينز ", image: "assets/images/image-3.png"),
  ];
  List<Questions> questions = [
    Questions(
        draw: DrawQuestion(
            question: "ارسم مكان الجينز ", image: "assets/images/test1.jpg"),
        mcq: null),
    Questions(
        draw: DrawQuestion(
            question: "ارسم مكان الجينز ", image: "assets/images/test3.jpg"),
        mcq: null),
    Questions(
        draw: DrawQuestion(
            question: "ارسم مكان الجينز ", image: "assets/images/test2.jpg"),
        mcq: null),
    Questions(
        draw: null,
        mcq: MultiplechoiceQuestio(
            question: "الملابس في الصورة تناسب جنس",
            image: "assets/images/image-1.png")),
    Questions(
        draw: DrawQuestion(
            question: "ارسم مكان الشورت ", image: "assets/images/test4.jpg"),
        mcq: null),
    Questions(
        draw: DrawQuestion(
            question: "ارسم مكان القميص ", image: "assets/images/test5.jpg"),
        mcq: null),
  ];

  void timerRunn() {
    setState(() {
      timer = Timer.periodic(Duration(seconds: 1), (timer) {
        time =
            TimerTextFormatter.format(stopwatch.elapsedMilliseconds).toString();
        print("${time}");

        if (time == "01:00") {
          _onChanged(time);
          timer.cancel();
        } else {
          _onChanged(time);
        }
      });
    });
  }

  void cancelTimer() {
    timer.cancel();
    stopwatch.stop();
  }

  void _onChanged(String value) {
    setState(
      () {
        time = '${value}';
        if (time == "01:00") {
          percentage = 1;
          _TimesUp();
          stopwatch.stop();
        } else {
          percentage = percentage + 0.01666667;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradentColors,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "٣٠ سؤال",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.help,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new LinearPercentIndicator(
                          width: 100,
                          animation: false,
                          lineHeight: 15.0,
                          animationDuration: 1000,
                          percent: percentage,
                          leading: Text(
                            time,
                            style: TextStyle(color: Colors.white),
                          ),
                          linearGradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xff39B9CC),
                              Color(0xff0079B4),
                            ],
                          ),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: Color(0xffD3D8EF),
                        ),
                      ),
                    ],
                  ),
                ),
                whichone(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.22,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0xff2EADC7),
                      ),
                      child: FloatingActionButton.extended(
                        disabledElevation: 0,
                        heroTag: 3,
                        onPressed: () {
                          if (!_isButtonDisabled) {
                            clear();
                            setState(() {
                              print(questions.length);
                              if (counter < questions.length - 1) {
                                counter++;
                              } else {
                                cancelTimer();
                                _finish();
                              }
                            });
                          } else {
                            _SelectAns();
                          }
                        },
                        elevation: 0,
                        label: Text(
                          'تم',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        icon: Icon(Icons.done),
                        backgroundColor: Colors.transparent,
                        highlightElevation: 0,
                        hoverElevation: 0,
                        focusElevation: 0,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'تخطي',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            color: Colors.white),
                      ),
                      onPressed: () {
                        clear();
                        setState(() {
                          print(questions.length);
                          if (counter < questions.length - 1) {
                            counter++;
                          } else {
                            cancelTimer();
                            _finish();
                          }
                        });
                      },
                      highlightColor: Colors.transparent,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget whichone() {
    if (questions[counter].draw == null) {
      return multchoise();
    } else if (questions[counter].mcq == null) {
      return drew();
    }
  }

  Widget multchoise() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.73,
      width: MediaQuery.of(context).size.width * 0.90,
      child: Card(
        elevation: 3,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Image.asset(
                questions[counter].mcq.image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              child: Text(
                questions[counter].mcq.question,
                style: TextStyle(fontFamily: 'Cairo', fontSize: 20),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff333333),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              width: 307,
              height: 45,
              child: FloatingActionButton.extended(
                heroTag: 1,
                onPressed: () {
                  setState(() {
                    _isSelectedans1 = true;
                    _isSelectedans2 = false;
                    _isButtonDisabled = false;
                  });
                },
                elevation: 0,
                highlightElevation: 0,
                label: Text(
                  'الذكور',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff333333),
                  ),
                ),
                backgroundColor:
                    _isSelectedans1 ? Colors.grey : Colors.transparent,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff333333),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              width: 307,
              height: 45,
              child: FloatingActionButton.extended(
                heroTag: 2,
                onPressed: () {
                  setState(() {
                    _isSelectedans1 = false;
                    _isSelectedans2 = true;
                    _isButtonDisabled = false;
                  }); // Add your onPressed code here!
                },
                elevation: 0,
                highlightElevation: 0,
                label: Text(
                  'الإناث',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff333333),
                  ),
                ),
                backgroundColor:
                    _isSelectedans2 ? Colors.grey : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drew() {
    return new Container(
      height: MediaQuery.of(context).size.height * 0.73,
      width: MediaQuery.of(context).size.width * 0.90,
      child: Card(
        elevation: 3,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: new GestureDetector(
                onPanUpdate: (DragUpdateDetails details) {
                  setState(() {
                    RenderBox object = context.findRenderObject();
                    Offset _localPosition = object.globalToLocal(
                        details.globalPosition.translate(
                            -25, -(MediaQuery.of(context).size.height * 0.09)));
                    print(MediaQuery.of(context).size.height * 0.43);
                    if (_localPosition.dy <
                            MediaQuery.of(context).size.height * 0.45 &&
                        _localPosition.dy > 0 &&
                        _localPosition.dx > 0 &&
                        _localPosition.dx < 362) {
                      if (xmax < _localPosition.dx) {
                        xmax = _localPosition.dx;
                        print("xmax$xmax");
                      }
                      if (ymax < _localPosition.dy) {
                        ymax = _localPosition.dy;
                        print("ymax$ymax");
                      }
                      if (ymin > _localPosition.dy) {
                        ymin = _localPosition.dy;
                        print("ymin$ymin");
                      }
                      if (xmin > _localPosition.dx) {
                        xmin = _localPosition.dx;
                        print("xmin$xmin");
                      }
                      setState(() {
                        _isButtonDisabled = false;
                      });
                      print(_localPosition);
                      _points = new List.from(_points)..add(_localPosition);
                    }
                  });
                },
                onPanEnd: (DragEndDetails details) => _points.add(null),
                child: new CustomPaint(
                  painter: new Signature(points: _points),
                  size: Size.square(200),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: DecorationImage(
                  image: AssetImage(questions[counter].draw.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xffF5CC1E),
                          Color(0xffF2851C),
                        ],
                      ),
                    ),
                    child: FloatingActionButton.extended(
                      heroTag: 4,
                      onPressed: () => clear(),
                      elevation: 0,
                      label: Text(
                        ' إعادة الرسم',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: Icon(Icons.refresh),
                      backgroundColor: Colors.transparent,
                      highlightElevation: 0,
                      hoverElevation: 0,
                      focusElevation: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              child: Text(
                questions[counter].draw.question,
                style: TextStyle(fontFamily: 'Cairo', fontSize: 20),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              child: Text(
                "حاول ان تكون حذراً مع الرسم في الصورة ",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 15,
                    color: Color(0xff333333)),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _finish() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            width: 30,
            height: 50,
            child: Image.asset("assets/images/coin.png"),
          ),
          content: SingleChildScrollView(
            child: Text(
              'مبروك لقد ربحت ٥٠ نقطة',
              style: TextStyle(
                color: Color(
                  0xff333333,
                ),
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          actions: <Widget>[
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                color: Color(0xff8176DE),
              ),
              child: FlatButton(
                child: Text(
                  'العودة للشاشة الرئيسية',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  int count = 0;
                  Navigator.popUntil(context, (route) {
                    return count++ == 2;
                  });
                },
              ),
            ),
            SizedBox(width: 20),
          ],
        );
      },
    );
  }

  Future<void> _TimesUp() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            width: 30,
            height: 50,
            child: Image.asset("assets/images/hourglass.png"),
          ),
          content: SingleChildScrollView(
            child: Text(
              'للأسف إنتهى الوقت',
              style: TextStyle(
                color: Color(
                  0xff333333,
                ),
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 126,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                  color: Color(0xff8176DE),
                ),
                child: FlatButton(
                  child: Text(
                    'إلعب مرة أخرى',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    int count = 0;
                    Navigator.popUntil(context, (route) {
                      return count++ == 2;
                    });
                  },
                ),
              ),
            ),
            SizedBox(width: 50),
          ],
        );
      },
    );
  }

  Future<void> _SelectAns() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            width: 30,
            height: 50,
            child: Image.asset("assets/images/hourglass.png"),
          ),
          content: SingleChildScrollView(
            child: Text(
              'يجب الاجابة اولاً',
              style: TextStyle(
                color: Color(
                  0xff333333,
                ),
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 126,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                  color: Color(0xff8176DE),
                ),
                child: FlatButton(
                  child: Text(
                    'حسناً',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            SizedBox(width: 50),
          ],
        );
      },
    );
  }
}

class Signature extends CustomPainter {
  List<Offset> points;

  Signature({this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Color(0xffAA7AD6)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(Signature oldDelegate) => oldDelegate.points != points;
}

class TimerTextFormatter {
  static String format(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();
    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    return "$minutesStr:$secondsStr";
  }
}
