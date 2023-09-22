import 'package:cred_assignment/listing/tile_item.dart';
import 'package:flutter/material.dart';

class TileColumnView extends TileItem {
  TileColumnView({required super.tile});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClicked(context),
      child: IntrinsicWidth(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset("assets/cred_logo.png", height: 80, width: 80,),
                SizedBox(height: 10,),
                Text(tile.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
              ],
            ),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}