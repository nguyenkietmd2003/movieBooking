import 'package:flutter/material.dart';

// ignore: camel_case_types
class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SizedBox(
        height: size.height / 15,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: size.height / 15,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Icon(Icons.search),
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Movie',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16),
              width: size.width / 8,
              height: size.height / 10,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.blue,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              // child: Image.asset('assets/images/avata.png'),
              child: const Icon(Icons.menu),
            )
          ],
        ),
      ),
    );
  }
}
