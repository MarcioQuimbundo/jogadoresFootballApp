import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jogadores_football_app/src/blocs/player_listing_bloc.dart';
import 'package:jogadores_football_app/src/blocs/player_listing_state.dart';
import 'package:jogadores_football_app/src/models/api_models.dart';
import 'package:jogadores_football_app/src/themes/themes.dart';
import 'package:jogadores_football_app/src/widgets/message.dart';

class PlayerListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder(
        bloc: BlocProvider.of<PlayerListingBloc>(context),
        builder: (context, state) {
          if (state is PlayerUnitialiZedState) {
            return Message(
              message: "Please select a country flag to fetch players from",
            );
          } else if (state is PlayerEmptyState) {
            return Message(
              message: "No players found",
            );
          } else if (state is PlayerErrorState) {
            return Message(
              message: "Something went wrong",
            );
          } else if (state is PlayerFetchingState) {
            return Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            final stateAsPlayerFetchedState = state as PlayerFetchedState;
            final players = stateAsPlayerFetchedState.players;
            return buildPlayerList(players);
          }
        },
      ),
    );
  }
  Widget buildPlayerList(List<Players>players) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          Players player = players[index];
          return ListTile(
            leading: Image.network(player.headshot.imgUrl),
            title: Text(player.name, style: titleTextStyle),
            subtitle: Text(player.club.name, style: subTitleTextStyle),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 8.0,
          );
        },
        itemCount: players.length,
      )
    );
  }
}
