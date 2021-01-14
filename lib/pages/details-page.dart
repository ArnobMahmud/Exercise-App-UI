import 'package:exercise_app_ui/constants/constant.dart';
import 'package:exercise_app_ui/pages/home-page.dart';
import 'package:exercise_app_ui/widgets/SearchBar.dart';
import 'package:exercise_app_ui/widgets/SeasonCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 0.55,
            decoration: BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                    image: AssetImage("assets/images/meditation_bg.png"),
                    fit: BoxFit.fitWidth)),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Meditation",
                    style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.purple.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "3-10min exercise",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: width * 0.6,
                    child: Text(
                      "Live happier and healtier by learning these fundamentals of meditation.",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.5,
                    child: SearchBar()
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Wrap(
                    spacing:20,
                    runSpacing: 20,
                    children: [
                      SeasonCard(
                        seasonNum: 1,
                        isDone: true,
                      ),
                      SeasonCard(
                        seasonNum: 2,
                        isDone: true,
                      ),
                      SeasonCard(
                        seasonNum: 3,
                        isDone: false,
                      ),
                      SeasonCard(
                        seasonNum: 4,
                        isDone: false,
                      ),
                      SeasonCard(
                        seasonNum: 5,
                        isDone: true,
                      ),
                      SeasonCard(
                        seasonNum: 6,
                        isDone: false,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
