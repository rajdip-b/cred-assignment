import 'package:cred_assignment/listing/listing.dart';
import 'package:cred_assignment/listing/tile_column_view.dart';
import 'package:cred_assignment/listing/tile_row_view.dart';
import 'package:cred_assignment/models/section.dart';
import 'package:cred_assignment/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class SectionView extends StatelessWidget {
  final Section section;

  const SectionView({
    super.key,
    required this.section
  });

  @override
  Widget build(BuildContext context) {
    var layoutState = context.watch<LayoutState>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getGrayedOutText(section.title),
        SizedBox(height: 20,),
        Wrap(
          // direction: Axis.vertical,
          runSpacing: 20,
          children: [
            for (var tile in section.tiles)
              layoutState.rowDisplay ? TileRowView(tile: tile) : TileColumnView(tile: tile)
          ],
        ),
      ],
    );
  }
}