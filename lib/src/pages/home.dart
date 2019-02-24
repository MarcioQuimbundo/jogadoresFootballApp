import 'package:flutter/material.dart';
import 'package:jogadores_football_app/src/blocs/player_listing_bloc.dart';
import 'package:jogadores_football_app/src/services/repository.dart';
import 'package:jogadores_football_app/src/themes/themes.dart';
import 'package:jogadores_football_app/src/widgets/horizontal_bar.dart';

class HomePage extends StatefulWidget {

  final PlayerRepository playerRepository;

  HomePage({this.playerRepository});

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  //PlayerListingBloc _playerListingBloc:
  @override
  void initState() { 
    super.initState();
  //  _playerListingBloc =PlayerListingBloc(playerRepository: widget.playerRepository);
  }
  @override
  void dispose() {
    super.dispose();
  }
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