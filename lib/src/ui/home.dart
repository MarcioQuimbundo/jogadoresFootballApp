import 'package:flutter/material.dart';
import 'package:jogadores_football_app/src/services/repository.dart';
import 'package:jogadores_football_app/src/themes/themes.dart';
import 'package:jogadores_football_app/src/ui/horizontal_bar.dart';

class HomePage extends StatelessWidget {

  final PlayerRepository playerRepository;

  HomePage({this.playerRepository});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Jogadores de football', style: appBarTextStyle,),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          HorizontalBar(),
          SizedBox(height: 10.0),
          //PlayerListing()
        ],
      ),
    );
  }
}