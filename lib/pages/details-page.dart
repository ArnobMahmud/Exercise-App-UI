import 'package:exercise_app_ui/constants/constant.dart';
import 'package:exercise_app_ui/widgets/SearchBar.dart';
import 'package:flutter/material.dart';

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
            height: height * 0.45,
            decoration: BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                    image: AssetImage("assets/images/meditation_bg.png"),
                    fit: BoxFit.fitWidth)),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        color: Colors.purple.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                    width: width * 0.6,
                    child: Text(
                      "Live happier and healtier by learning these fundamentals of meditation.",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.purple.withOpacity(0.8),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: width * 0.5, child: SearchBar()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
