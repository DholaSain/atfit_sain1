import 'dart:ui' as ui;
import 'package:atfit_sain/const.dart';
import 'package:atfit_sain/dietplan_screen.dart';
import 'package:atfit_sain/water_screen.dart';
import 'package:flutter/material.dart';

import 'health_tips_screen.dart';

class NutrationScreen extends StatelessWidget {
  final double _borderRadius = 24.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nutration',
                            style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFFF7892B),
                            ),
                          ),
                          Text(
                            'Suggestions for you',
                            style: TextStyle(color: Color(0xFF4B200F)),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {
                              //Show Dialouge
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  backgroundColor: kPrimaryColor,
                                  title: Text(
                                    'Nutration',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  content: Container(
                                    height: 480,
                                    child: Column(
                                      children: [
                                        Image.asset('images/nut_head.png'),
                                        Text(
                                          'A healthy diet throughout life promotes healthy pregnancy outcomes, supports normal growth, development and ageing, helps to maintain a healthy body weight, and reduces the risk of chronic disease leading to overall health and well-being.',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Most people know good nutrition and physical activity can help maintain a healthy weight. But the benefits of good nutrition go beyond weight.',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  actions: [
                                    FlatButton(
                                      child: Text(
                                        'Got it',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                width: 80,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'About',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.lightbulb,
                                      color: Colors.orange,
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    //Diet Plan Card
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DietPlanScreen(),
                        ),
                      ),
                      //ToDo: SetUp Diet Plan here.

                      child: Stack(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFFBB448),
                                  Color(0XFFF7892B),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.orangeAccent.withOpacity(0.5),
                                  blurRadius: 10,
                                  spreadRadius: 0.1,
                                  offset: Offset(2, 4),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(110, 150),
                              painter: CustomCardShapPainter(
                                _borderRadius,
                                Color(0xFFFBB448),
                                Color(0XFFF7892B),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            'Diet Plan',
                                            style: TextStyle(
                                              color: Color(0xFF4B200F),
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child:
                                                Text('Your Diet Plan is here')),
                                        Expanded(
                                          flex: 4,
                                          child: FlatButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Read More ',
                                                  style: TextStyle(
                                                    color: Colors.white70,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_right_alt,
                                                  color: Colors.white70,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Image.asset(
                                    'images/diet.png',
                                    height: 100,
                                  ),
                                  flex: 2,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //Water Reminder Card
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => WaterScreen(),
                        ),
                      ),
                      //ToDo: SetUp Water reminder

                      child: Stack(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFFBB448),
                                  Color(0XFFF7892B),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.orangeAccent.withOpacity(0.5),
                                  blurRadius: 10,
                                  spreadRadius: 0.1,
                                  offset: Offset(2, 4),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(110, 150),
                              painter: CustomCardShapPainter(
                                _borderRadius,
                                Color(0xFFFBB448),
                                Color(0XFFF7892B),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            'Water Tracker',
                                            style: TextStyle(
                                              color: Color(0xFF4B200F),
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2, child: Text('0/8 Cups')),
                                        Expanded(
                                          flex: 4,
                                          child: Row(
                                            children: [
                                              RaisedButton(
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                ),
                                                child: Text('Drink'),
                                                color: Colors.white,
                                                onPressed: () {},
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Image.asset(
                                    'images/water1.png',
                                    height: 150,
                                  ),
                                  flex: 2,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //Health Tips Blog
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HealthTipsScreen(),
                        ),
                      ),
                      //ToDO: SetUp Health tips Blog here.

                      child: Stack(
                        children: [
                          Container(
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFFBB448),
                                  Color(0XFFF7892B),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.orangeAccent.withOpacity(0.5),
                                  blurRadius: 10,
                                  spreadRadius: 0.1,
                                  offset: Offset(2, 4),
                                )
                              ],
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              // margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'images/Health.png',
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(200, 300),
                              painter: CustomCardShapPainter(
                                _borderRadius,
                                Color(0xFFFBB448),
                                Color(0XFFF7892B),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              child: Image.asset(
                                'images/Health.png',
                                height: 700,
                                width: 700,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Row(
                              children: [
                                Expanded(
                                  // flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Good Health Tips',
                                                style: TextStyle(
                                                  color: Color(0xFF4B200F),
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Lear More, How to get fit',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Expanded(
                                //   child: Image.asset(
                                //     'images/Health.png',
                                //     height: 700,
                                //     width: 700,
                                //   ),
                                //   // flex: 2,
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCardShapPainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapPainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.6).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height - radius)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 1 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
