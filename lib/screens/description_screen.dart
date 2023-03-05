import 'package:flutter/material.dart';
import 'package:leagueapi/utilities/text.dart';
import 'package:leagueapi/widgets/arrow_back.dart';

class DescriptionScreen extends StatelessWidget {
  final String moviename, description, vote, releasedate, bannerurl, posterurl;

  const DescriptionScreen(
      {super.key,
      required this.moviename,
      required this.bannerurl,
      required this.releasedate,
      required this.posterurl,
      required this.vote,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          children: [
            // back arrow
            const CustomizedAppBar(),
            Container(
              height: 250.0,
              child: Stack(
                children: [
                  //banner
                  Positioned(
                    child: Container(
                      height: 250.0,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        bannerurl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Rating
                  Positioned(
                    bottom: 10.0,
                    child: CustomizedText(
                      text: '  ⭐Average Rating-$vote',
                      size: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // movie name
            Container(
              padding: const EdgeInsets.all(15.0),
              child: CustomizedText(
                text: moviename != null ? moviename : 'Not loaded',
                color: Colors.white,
                size: 20.0,
              ),
            ),
            //Realised date
            Container(
              padding: const EdgeInsets.only(left: 10.0),
              child: CustomizedText(
                text: 'Released on -$releasedate',
                size: 20.0,
                color: Colors.white,
              ),
            ),
            // url plus description
            Row(
              children: [
                Container(
                  height: 200.0,
                  width: 100.0,
                  margin: const EdgeInsets.all(10.0),
                  child: Image.network(posterurl),
                ),
                Flexible(
                  child: Container(
                    child: CustomizedText(
                      text: description,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
