// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:leagueapi/utilities/text.dart';

class TvShows extends StatelessWidget {
  final List tvshows;

  const TvShows({super.key, required this.tvshows});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Trending Movie Text
          const CustomizedText(
            text: ' Popular Tv Shows',
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
              itemCount: tvshows.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    width: 250,
                    child: Column(
                      children: [
                        // Banner part
                        Container(
                          height: 140.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://image.tmdb.org/t/p/w500' +
                                      tvshows[index]['backdrop_path']),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        // Movie name
                        Container(
                          child: CustomizedText(
                            text: tvshows[index]['original_name'] ?? 'Loading',
                            size: 20.0,
                            color: Colors.white,
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
