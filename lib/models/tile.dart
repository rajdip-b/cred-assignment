class Tile {
  final String id;
  final String name;
  final String description;
  final String iconUrl;

  const Tile({
    required this.id,
    required this.name,
    required this.description,
    required this.iconUrl
  });

  factory Tile.fromJson(Map<String, dynamic> json) {
    return Tile(
      id: json['id'],
      name: json['display_data']['name'],
      description: json['display_data']['description'],
      iconUrl: json['display_data']['icon_url']
    );
  }

  @override
  String toString() {
    return 'Tile{id: $id, name: $name, description: $description, iconUrl: $iconUrl}';
  }
}