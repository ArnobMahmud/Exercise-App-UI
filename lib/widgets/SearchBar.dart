import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 20.0),
            border: InputBorder.none),
      ),
    );
  }
}
