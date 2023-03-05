// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:leagueapi/screens/description_screen.dart';
import 'package:leagueapi/utilities/text.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({super.key, required this.trending});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Trending Movie Text
          const CustomizedText(
            text: 'Trending Movies',
            size: 18.0,
            color: Colors.white,
          ),
          // List view
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 270.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trending.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DescriptionScreen(
                            bannerurl: 'https://image.tmdb.org/t/p/w500' +
                                trending[index]['backdrop_path'],
                            vote: trending[index]['vote_average'].toString(),
                            releasedate: trending[index]['release_date'],
                            moviename: trending[index]['title'],
                            posterurl: 'https://image.tmdb.org/t/p/w500' +
                                trending[index]['poster_path'],
                            description: trending[index]['overview'],
                          ),
                        ),
                      );
                    },
                    child: trending[index]['title'] != null
                        ? Container(
                            width: 140.0,
                            child: Column(
                              children: [
                                // Banner part
                                Container(
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://image.tmdb.org/t/p/w500' +
                                                trending[index]['poster_path']),
                                      )),
                                ),

                                // Movie name
                                Flexible(
                                  child: Container(
                                    child: CustomizedText(
                                      text:
                                          trending[index]['title'] ?? 'Loading',
                                      size: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        : Container());
              },
            ),
          )
        ],
      ),
    );
  }
}
