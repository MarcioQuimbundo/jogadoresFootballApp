import 'package:jogadores_football_app/src/models/nation.dart';
import 'package:meta/meta.dart';

abstract class PlayerListingEvent {}

class CountrySelectedEvent extends PlayerListingEvent {
  final NationModel nationModel;

  CountrySelectedEvent({@required this.nationModel}) : assert(nationModel != null);
}