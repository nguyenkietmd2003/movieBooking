import 'package:flutter/material.dart';
import 'package:movie/pages/homePage/homePage.dart';

class Category extends StatefulWidget {
  const Category({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height / 15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                alignment: Alignment.center,
                width: widget.size.width / 4,
                decoration: selectedIndex == index
                    ? BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(12))
                    : const BoxDecoration(color: Colors.transparent),
                child: Text(
                  genres[index],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}
