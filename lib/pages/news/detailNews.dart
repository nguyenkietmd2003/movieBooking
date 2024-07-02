import 'package:flutter/material.dart';
import 'package:movie/mainPage.dart';

class DetailNewsPage extends StatelessWidget {
  const DetailNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 200, 206, 209),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SizedBox(
                  width: 200, // Width of the image container
                  height: 200, // Height of the image container
                  child: Image.asset(
                    'assets/images/avata.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Syed Saddiq Wants Young People to Have a Say in Malaysia\'s Future',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'People aged 18 to 20 can vote for the first time in Malaysia\'s upcoming general election. Will they make their voices heard?',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Malaysia\'s upcoming general election on Nov. 19 will be the first in which people aged 18 to 20 can vote. The change follows constitutional amendments in 2019 and could have big political implications...',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
