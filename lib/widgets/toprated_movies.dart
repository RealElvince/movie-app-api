// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:leagueapi/utilities/text.dart';

class TopRatedMovies extends StatelessWidget {
  final List toprated;

  const TopRatedMovies({super.key, required this.toprated});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Trending Movie Text
          const CustomizedText(
            text: 'Top Rated Movies',
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
              itemCount: toprated.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
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
                                        toprated[index]['poster_path']),
                              )),
                        ),

                        // Movie name
                        Flexible(
                          child: Container(
                            child: CustomizedText(
                              text: toprated[index]['title'] ?? 'Loading',
                              size: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
