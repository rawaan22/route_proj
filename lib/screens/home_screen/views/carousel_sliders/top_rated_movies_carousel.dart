import 'package:flutter/material.dart';
import 'package:graduation_proj/api/models/movie_model.dart';
import 'package:graduation_proj/core/constants/constants.dart';

class TopRatedMoviesCarousel extends StatelessWidget {
  final List<Movie> movies;

  const TopRatedMoviesCarousel({Key? key, required this.movies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];

                return Container(
                  width: 96.87,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: const Color(0XFF343534),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          "https://image.tmdb.org/t/p/original/${movie.backDropPath}",
                          width: 96.87,
                          height: 127.74,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 13,
                                  color: Constants.yellowColor,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '${movie.voteAverage}',
                                  style: Constants.theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: Constants.mediaQuery.width * 0.1,
                              child: Text(
                                movie.title,
                                style: Constants.theme.textTheme.bodySmall!
                                    .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              movie.releaseDate,
                              style: Constants.theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
