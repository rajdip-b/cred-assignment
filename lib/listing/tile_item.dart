import 'package:cred_assignment/models/tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class TileItem extends StatelessWidget {
  final Tile tile;

  const TileItem({
    super.key,
    required this.tile
  });

  Future<void> onClicked(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("name", tile.name);
    prefs.setString("description", tile.description);
  }
}