class Pokemon {
  final String url;
  final String name;

  Pokemon({
    required this.url,
    required this.name,
  });

  get image =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  String get id => url.substring(0, url.length - 1).split('/').last;

  String get displayId {
    if (id.length == 1) {
      return '#00$id';
    } else if (id.length == 2) {
      return '#0$id';
    } else {
      return '#$id';
    }
  }
}
