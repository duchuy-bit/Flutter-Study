// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_animation/screen/home/components/DynamicIsland.dart';
import 'package:flutter_animation/screen/home/components/Header.dart';
import 'package:flutter_animation/screen/home/components/ListCategories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: <Widget>[
        DynamicIsland(),
        HomeUI(),
      ],
    );
  }
}

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const HeaderHome(),
            headerMenu(),
          ],
        ),
        const ListCategories(),
        const Expanded(child: Text("hello"))
      ],
    );
  }

  Widget headerMenu() => SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          // decoration: BoxDecoration(color: Colors.pink),
          height: 50,
          // width: MediaQuery.of(context).size.width,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(
                    Icons.notes_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                  const Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello, Dev Bear",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "Mobile Developer",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/images/avatar.jpg",
                        height: 40, width: 40),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
