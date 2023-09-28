// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_animation/screen/home/data/categoryItem.dart';

class ListCategories extends StatefulWidget {
  const ListCategories({super.key});

  @override
  State<ListCategories> createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {
  List<CategoryItem> listCategories = [
    CategoryItem(
        id: 1,
        title: "Dev Bear",
        image: "assets/images/",
        detail: "Mobile Developer"),
    CategoryItem(
        id: 2,
        title: "Dev Bear",
        image: "assets/images/",
        detail: "Mobile Developer"),
    CategoryItem(
        id: 3,
        title: "Dev Bear",
        image: "assets/images/",
        detail: "Mobile Developer"),
    CategoryItem(
        id: 4,
        title: "Dev Bear",
        image: "assets/images/",
        detail: "Mobile Developer"),
    CategoryItem(
        id: 5,
        title: "Dev Bear",
        image: "assets/images/",
        detail: "Mobile Developer"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: 1,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final item = listCategories[index];
          return Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(color: Colors.pink),
            child: Column(
              children: [Text(item.title.toString())],
            ),
          );
        },
        // separatorBuilder: separatorBuilder,
        itemCount: listCategories.length,
      ),
    );
  }
}
