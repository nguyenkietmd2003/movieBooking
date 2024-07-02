import 'package:flutter/material.dart';
import 'package:movie/pages/homePage/homePage.dart';

class Trailer extends StatelessWidget {
  const Trailer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: movies.map((movie) => TrailerItem(movie: movie)).toList(),
      ),
    );
  }
}

class TrailerItem extends StatelessWidget {
  final Movie movie;

  const TrailerItem({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(movie.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.black12,
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlue,
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            movie.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

// Assuming Movie is a class with title and imageUrl properties.
class Movie {
  final String title;
  final String imageUrl;

  Movie({required this.title, required this.imageUrl});
}

// Example data
final List<Movie> movies = [
  Movie(
      title: 'Nobita and the Island Adventure',
      imageUrl:
          'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg'),
  Movie(
      title: 'Nobita and the Island Adventure',
      imageUrl:
          'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg'),
  Movie(
      title: 'Nobita and the Island Adventure',
      imageUrl:
          'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg'),
  // Add more movies here
];
