import 'tile.dart';

class Section {
  final String id;
  final String title;
  final List<Tile> tiles;

  const Section({
    required this.id,
    required this.title,
    required this.tiles
  });

  factory Section.fromJson(Map<String, dynamic> json) {
    return Section(
      id: json['id'],
      title: json['section_properties']['title'],
      tiles: generateTiles(json)
    );
  }

  static List<Tile> generateTiles(Map<String, dynamic> json) {
    List<dynamic> items = json['section_properties']['items'];
    List<Tile> tiles = [];
    for (var item in items) {
      tiles.add(Tile.fromJson(item));
    }
    return tiles;
  }

  @override
  String toString() {
    return 'Section{id: $id, title: $title, tiles: $tiles}';
  }
}