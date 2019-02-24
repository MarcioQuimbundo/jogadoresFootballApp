import '../models/nation.dart';
import 'package:flutter/material.dart';

class HorizontalBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        itemBuilder: buildItem,
        itemCount: nations.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget buildItem(BuildContext context, int index) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(nations[index].imagePath),
          ), 
        ),
        margin: EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }

  Widget buildSeparator (BuildContext context, int index) {
    return VerticalDivider(
      width: 32.0,
      color: Colors.transparent,
    );
  }
}
