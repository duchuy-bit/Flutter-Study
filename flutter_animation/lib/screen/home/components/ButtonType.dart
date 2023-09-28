// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonTypeInHome extends StatefulWidget {
  const ButtonTypeInHome({super.key});

  @override
  State<ButtonTypeInHome> createState() => _ButtonTypeInHomeState();
}

class _ButtonTypeInHomeState extends State<ButtonTypeInHome> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ItemButtonType(
            icon: Icons.call,
            text: "OK",
          ),
          ItemButtonType(
            icon: Icons.chat,
            text: "OK",
          ),
          ItemButtonType(
            icon: Icons.music_note,
            text: "OK",
          ),
        ],
      ),
    );
  }
}

class ItemButtonType extends StatelessWidget {
  final IconData icon;
  final String text;
  const ItemButtonType({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 192, 228, 255).withOpacity(0.4),
          ),
          child: Center(child: Icon(icon, color: Colors.white, size: 38)),
          // child: Text(text),
        ),
      ),
    );
  }
}
