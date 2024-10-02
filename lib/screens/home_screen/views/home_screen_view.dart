import 'package:flutter/material.dart';
import 'package:graduation_proj/api/api_service.dart';
import 'package:graduation_proj/api/models/movie_model.dart';
import 'package:graduation_proj/screens/buttom_nav_bar.dart';
import 'package:graduation_proj/screens/home_screen/views/carousel_sliders/popular_movies_carousel.dart';
import 'package:graduation_proj/screens/home_screen/views/carousel_sliders/top_rated_movies_carousel.dart';
import 'package:graduation_proj/screens/home_screen/views/carousel_sliders/upcoming_movies_carousel.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  late Future<List<Movie>> upcomingMovies;
  late Future<List<Movie>> popularMovies;
  late Future<List<Movie>> topRatedMovies;

  int _selectedIndex = 0;

  @override
  void initState() {
    upcomingMovies = Api().getUpcomingMovies();
    popularMovies = Api().getPopularMovies();
    topRatedMovies = Api().getTopRatedMovies();
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
              future: upcomingMovies,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final movies = snapshot.data!;
                return UpcomingMoviesCarousel(movies: movies);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: const Text(
                'New Releases',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 5),
              child: Container(
                color: const Color(0XFF282A28),
                margin: const EdgeInsets.symmetric(vertical: 3),
                height: 200,
                child: FutureBuilder(
                  future: popularMovies,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    final movies = snapshot.data!;
                    return PopularMoviesCarousel(movies: movies);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: const Text(
                'Recommended',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 5),
              child: Container(
                color: const Color(0XFF282A28),
                margin: const EdgeInsets.symmetric(vertical: 0),
                height: 350,
                child: FutureBuilder(
                  future: topRatedMovies,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    final movies = snapshot.data!;
                    return TopRatedMoviesCarousel(movies: movies);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
