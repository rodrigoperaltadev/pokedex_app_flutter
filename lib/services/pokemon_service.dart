import 'package:http/http.dart' as http;
import 'package:pokedex_coco_version/models/pokemon.dart';
import 'package:pokedex_coco_version/services/models/models.dart';

class PokemonService {
  final base = 'pokeapi.co';
  final endpoint = '/api/v2/pokemon';

  Future<List<Pokemon>> getPokemons(String offset) async {
    final url = getPokemonsUri(offset);

    final response = await http.get(url);
    final pokemonListResponse = PokemonListResponse.fromJson(response.body);
    final pokemons = pokemonListResponse.results.map((pokemon) {
      return Pokemon(
        name: pokemon.name,
        url: pokemon.url,
      );
    }).toList();
    return pokemons;
  }

  Uri getPokemonsUri(String offset) {
    return Uri.https(base, endpoint, {'offset': offset});
  }
}
