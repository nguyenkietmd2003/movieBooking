import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie/pages/news/detailNews.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tin Tức'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification tap
            },
          ),
        ],
      ),
      body: const NewsPage(),
    );
  }
}

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BreakingNewsSection(),
          const SizedBox(
            height: 20,
          ),
          RecentNewsSection(),
        ],
      ),
    );
  }
}

class BreakingNewsSection extends StatelessWidget {
  final List<String> breakingNews = [
    'Tin Tức số 1 ',
    'Tin Tức số 2',
    'Tin tức số 3',
  ];

  final List<String> images = [
    'assets/images/avata.png',
    'assets/images/qr.png',
    'assets/images/orderSuccess.png',
  ];

  BreakingNewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselSlider.builder(
        itemCount: breakingNews.length,
        itemBuilder: (context, index, realIndex) {
          return Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 30,
                child: Container(
                  color: Colors.black54,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    breakingNews[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}

class RecentNewsSection extends StatelessWidget {
  final List<String> newsTitles = [
    'Wall Street market key King',
    'Welcome to the  of the Private Market',
    'Yesterday\'s Unbelievable Sports Event',
  ];

  RecentNewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: newsTitles.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DetailNewsPage();
            }));
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black26,
            ),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue[50],
                  ),
                  child: Image.asset(
                    'assets/images/avata.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              newsTitles[index],
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Icon(Icons.arrow_right,
                              size: 30, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
