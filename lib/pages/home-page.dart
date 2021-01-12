import 'package:exercise_app_ui/widgets/CategoryCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
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
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image:
                        AssetImage("assets/images/undraw_pilates_gpdb.png"))),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF2BEA1),
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Morning \nArnob",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: SvgPicture.asset("assets/icons/search.svg"),
                          hintText: "Search",
                          hintStyle: TextStyle(fontSize: 20.0),
                          border: InputBorder.none),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      children: [
                        CategoryCard(
                          title: "Diet Recommendation",
                          svgSrc: "assets/icons/Hamburger.svg",
                          onPressed: () {},
                        ),
                        CategoryCard(
                          title: "Kegel Exercise",
                          svgSrc: "assets/icons/Excrecises.svg",
                          onPressed: () {},
                        ),
                        CategoryCard(
                          title: "Meditation",
                          svgSrc: "assets/icons/Meditation.svg",
                          onPressed: () {},
                        ),
                        CategoryCard(
                          title: "Yoga",
                          svgSrc: "assets/icons/yoga.svg",
                          onPressed: () {},
                        ),
                      ],
                    ),
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
