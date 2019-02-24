import 'package:jogadores_football_app/src/models/nation.dart';

abstract class PlayerListingEvent {}

class CountrySelectedEvent extends PlayerListingEvent {
  final NationModel nationModel;

  CountrySelectedEvent({this.nationModel}) : assert(nationModel != null);
}