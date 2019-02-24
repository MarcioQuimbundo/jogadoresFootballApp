import 'package:bloc/bloc.dart';
import 'package:jogadores_football_app/src/blocs/player_listing_events.dart';
import 'package:jogadores_football_app/src/blocs/player_listing_state.dart';
import 'package:jogadores_football_app/src/models/api_models.dart';
import 'package:jogadores_football_app/src/services/repository.dart';

class PlayerListingBloc extends Bloc<PlayerListingEvent, PlayerListingState> {
  final PlayerRepository playerRepository;

  PlayerListingBloc({this.playerRepository}) : assert(playerRepository != null);
  @override
  PlayerListingState get initialState => PlayerUnitialiZedState();

  @override
  Stream<PlayerListingState> mapEventToState(
      PlayerListingState currentState, PlayerListingEvent event) async* {
    if (event is CountrySelectedEvent) {
      yield PlayerFetchingState();
      try {
        final List<Players> players = await playerRepository
            .fetchPlayersByCountry(event.nationModel.countryId);
        if (players.length == 0) {
          yield PlayerEmptyState();
        } else {
          yield PlayerFetchedState(players: players);
        }
      } catch (_) { yield PlayerErrorState(); }
    }
  }
}
