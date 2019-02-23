import 'package:flutter/material.dart';
import 'package:jogadores_football_app/src/services/repository.dart';

class HomePage extends StatelessWidget {

  final PlayerRepository playerRepository;

  HomePage({this.playerRepository});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text("Home"),
          ),
        ),
      ),
    );
  }
}