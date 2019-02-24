import 'package:flutter/material.dart';
import 'package:jogadores_football_app/src/services/repository.dart';
import './src/pages/home.dart';
void main() {
  PlayerRepository _repository = PlayerRepository();

  return runApp(App(playerRepository: _repository));
}

class App extends StatelessWidget {
  final PlayerRepository playerRepository;

  App({this.playerRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
