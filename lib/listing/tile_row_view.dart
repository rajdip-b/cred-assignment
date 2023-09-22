import 'package:cred_assignment/listing/tile_item.dart';
import 'package:flutter/material.dart';

class TileRowView extends TileItem {
  TileRowView({required super.tile});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClicked(context),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/cred_logo.png", height: 80, width: 80,),
              SizedBox(width: 30,),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tile.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      Text(tile.description, style: TextStyle(color: Colors.white24, fontWeight: FontWeight.w600),),
                    ],
                  )
              ),
            ],
          ),
          // SizedBox(height: 20,)
        ],
      ),
    );
  }
}