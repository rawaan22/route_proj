import 'package:flutter/material.dart';
import 'package:graduation_proj/api/models/movie_model.dart';
import 'package:graduation_proj/screens/bookmark.dart';

class PopularMoviesCarousel extends StatelessWidget {
  final List<Movie> movies;

  const PopularMoviesCarousel({Key? key, required this.movies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];

        return Container(
          width: 96.87,
          height: 150,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                "https://image.tmdb.org/t/p/original/${movie.backDropPath}",
                width: MediaQuery.of(context).size.width * (97 / 100),
                height: MediaQuery.of(context).size.height * (127 / 100),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: BookmarkIcon(),
            ),
          ]),
        );
      },
    );
  }
}
