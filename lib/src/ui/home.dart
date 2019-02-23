import 'package:flutter/material.dart';
import 'package:jogadores_football_app/src/services/repository.dart';

class HomePage extends StatelessWidget {

  final PlayerRepository playerRepository;

  HomePage({this.playerRepository});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Jogadores de football'),
      ),
    );
  }
}