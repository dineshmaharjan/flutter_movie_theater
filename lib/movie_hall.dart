import 'package:flutter/material.dart';
import 'package:movie_hall/utils/dash.dart';
import 'dart:math' as math;

class MovieHallPage extends StatefulWidget {
  @override
  _MovieHallPageState createState() => _MovieHallPageState();
}

class _MovieHallPageState extends State<MovieHallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Movie Hall",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
//          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 16.0),
          padding: EdgeInsets.all(16.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Spider-Man:Far From Home",
                style: TextStyle(color: Colors.black, fontSize: 24.0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "2h 9min",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "Tuesday, 13th July | 9:00 AM",
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Laemmle Music Hall",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              DashLine(),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                      child: Container(
                        width: 250,
                        child: CustomPaint(
                          painter: TheaterWidget(),
                          size: Size(150, 150),
                        ),
                      ),
                    ),
                    Text("Screen side"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: seatListWidget(),
              ),
              footerWidget(),
              SizedBox(
                height: 8.0,
              ),
              DashLine(),
              SizedBox(
                height: 8.0,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "62 USD for 2 Tickets",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
              payWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget payWidget() {
    return Center(
      child: Container(
        width: 200,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          "Proceed",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        )),
      ),
    );
  }

  Widget footerWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              seatWidget(),
              SizedBox(
                width: 4.0,
              ),
              Text("Available"),
            ],
          ),
          flex: 1,
        ),
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              seatWidget(status: 2),
              SizedBox(
                width: 4.0,
              ),
              Text("Selected"),
            ],
          ),
          flex: 1,
        ),
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              seatWidget(status: 3),
              SizedBox(
                width: 4.0,
              ),
              Text("Sold"),
            ],
          ),
          flex: 1,
        ),
      ],
    );
  }

  Widget seatListWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(status: 2),
                    seatWidget(),
                    seatWidget(),
                    seatEmptyWidget(),
                    seatEmptyWidget(),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(status: 2),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatEmptyWidget(),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(status: 3),
                    seatWidget(),
                    seatEmptyWidget(),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatEmptyWidget(),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatEmptyWidget(),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatEmptyWidget(),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(status: 2),
                    seatWidget(status: 2),
                    seatWidget(),
                    seatWidget(),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(status: 3),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(status: 3),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                  ],
                ),
                Row(
                  children: [
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                    seatWidget(),
                  ],
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(status: 2),
                seatWidget(status: 2),
                seatWidget(status: 2),
                seatWidget(status: 2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(status: 3),
                seatWidget(status: 3),
                seatWidget(status: 3),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
                seatWidget(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget seatWidget({int status = 1}) {
    Color color;
    switch (status) {
      case 1:
        color = Colors.transparent;
        break;

      case 2:
        color = Colors.blue;
        break;

      case 3:
        color = Colors.red;
        break;
      default:
        color = Colors.transparent;
        break;
    }

    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(2.0),
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.blueGrey, width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
      ),
    );
  }

  Widget seatEmptyWidget() {
    return Container(
      margin: EdgeInsets.all(2.0),
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
      ),
    );
  }
}

class TheaterWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTRB(20.0, 16, size.width - 20, 50);
    final startAngle = -math.pi;
    final sweepAngle = math.pi;
    final useCenter = false;
    final paint = Paint()
      ..color = Colors.blueGrey
      ..blendMode = BlendMode.darken
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, convertRadiusToSigma(48))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.5;

    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  double convertRadiusToSigma(double radius) {
    return radius * 0.57735 + 0.5;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
