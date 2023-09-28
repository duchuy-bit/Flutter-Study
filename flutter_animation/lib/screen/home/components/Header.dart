// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_animation/screen/home/components/ButtonType.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  double heightHeader = 130;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background 1
        Container(
          height: heightHeader,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            // color: Color.fromRGBO(84, 217, 195, 1),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [
                0,
                1,
              ],
              colors: [
                Color.fromRGBO(75, 201, 247, 1),
                Color.fromRGBO(86, 224, 175, 1),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
        // Background 2
        // Container(
        //   height: 150,
        //   width: 180,
        //   decoration: const BoxDecoration(
        //     // color: Color.fromRGBO(84, 217, 195, 1),
        //     gradient: LinearGradient(
        //       begin: Alignment.centerLeft,
        //       end: Alignment.centerRight,
        //       stops: [
        //         0,
        //         1,
        //       ],
        //       colors: [
        //         Color.fromRGBO(24, 120, 250, 1),
        //         Color.fromRGBO(53, 172, 252, 1),
        //       ],
        //     ),
        //     borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(50),
        //       bottomRight: Radius.circular(90),
        //     ),
        //   ),
        // ),

        // CustomPaint(
        //   size: Size(400, 400),
        //   painter: CurvedPainter(),
        // ),

        // Button
        Positioned(
          top: heightHeader - 70 / 2,
          child: const ButtonTypeInHome(),
        ),

        Container(
          height: heightHeader + 70 / 2 + 10,
        ),
      ],
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(size.width * 0.7, 0);
    path.quadraticBezierTo(size.width * 0.8, 100, size.width * 0.5, 150);
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
    // size.width * 1.0, size.height * 0.8);
    // path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width * 0.5, 150, 0, 120);
    // path.lineTo(0, 120);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
