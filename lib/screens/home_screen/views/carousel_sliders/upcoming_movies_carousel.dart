import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graduation_proj/api/models/movie_model.dart';
import 'package:graduation_proj/screens/bookmark.dart';

class UpcomingMoviesCarousel extends StatelessWidget {
  final List<Movie> movies;

  const UpcomingMoviesCarousel({Key? key, required this.movies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: movies.length,
      itemBuilder: (context, index, movieIndex) {
        final movie = movies[index];
        return Stack(
          alignment: Alignment.center,
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://image.tmdb.org/t/p/original/${movie.backDropPath}",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.18,
              fit: BoxFit.cover,
            ),
            const Icon(
              Icons.play_circle_fill,
              color: Colors.white,
              size: 55.0,
            ),
            Positioned(
              top: 50,
              left: 16.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://image.tmdb.org/t/p/w500/${movie.posterPath}",
                  width: 129.0,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 16,
              child: BookmarkIcon(),
            ),
            Positioned(
              left: 160.0,
              top: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    movie.releaseDate,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        height: 217,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 1.4,
        autoPlayInterval: const Duration(seconds: 3),
        viewportFraction: 1.0,
      ),
    );
  }
}
