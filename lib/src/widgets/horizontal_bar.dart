import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jogadores_football_app/src/blocs/player_listing_bloc.dart';
import 'package:jogadores_football_app/src/blocs/player_listing_events.dart';

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
      onTap: () {
        BlocProvider.of<PlayerListingBloc>(context).dispatch(CountrySelectedEvent(nationModel: nations[index]));
      },
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
