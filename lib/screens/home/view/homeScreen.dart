import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Custom Paint"),
          centerTitle: true,
        ),
        body: CustomPaint(
          size: Size.infinite,
          painter: TriangleShape(),
        ),
      ),
    );
  }
}

class TriangleShape extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {

    Paint p1 = Paint()..strokeCap = StrokeCap.round..strokeWidth = 10..color = Colors.amber;

    Path path = Path();
    path.moveTo(0, size.height/2);
    path.lineTo(size.width/2, 0);
    path.lineTo(size.width, size.height/2);

    canvas.drawPath(path, p1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
