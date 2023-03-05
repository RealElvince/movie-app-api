import 'package:flutter/material.dart';
import 'package:leagueapi/utilities/text.dart';
import 'package:leagueapi/widgets/toprated_movies.dart';
import 'package:leagueapi/widgets/trending_movies.dart';
import 'package:leagueapi/widgets/tv_shows.dart';
import 'package:tmdb_api/tmdb_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // list of trending movies
  List trendingMovies = [];

  // List of top rated movies
  List topratedMovies = [];

  //List of tv shows
  List tvShows = [];

  // Define the api KEY
  final String apiKey = '5d13f485b47341465cc5bed7ad6f86bc';

  // Read Access token (allow application to access API)
  final readacesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1ZDEzZjQ4NWI0NzM0MTQ2NWNjNWJlZDdhZDZmODZiYyIsInN1YiI6IjY0MDQ0Njc3ZTYxZTZkMDA4ZTNmZmZhZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.f2CbKiv6l-TGp1HOTxzSMCK_pgqDgdcIHeZZoDG_Ep0';

  // calling fetch movie function to run
  @override
  initState() {
    fetchMovies();
    super.initState();
  }

  // a function for loading movies
  fetchMovies() async {
    // initialize TMDB object
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apiKey, readacesstoken),
      logConfig: const ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPopular();

    print(trendingresult);
    // state
    setState(() {
      trendingMovies = trendingresult['results'];
      topratedMovies = topratedresult['results'];
      tvShows = tvresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const CustomizedText(
          text: 'Guoko Movies',
          size: 25.0,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          // Popular Tv shows
          TvShows(
            tvshows: tvShows,
          ),
          //Top rated movies
          TopRatedMovies(toprated: topratedMovies),
          // Trending movies
          TrendingMovies(
            trending: trendingMovies,
          ),
        ],
      ),
    );
  }
}
