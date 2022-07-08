import 'package:http/http.dart' as http;
import 'package:pokedex_coco_version/models/pokemon_item.dart';
import 'package:pokedex_coco_version/services/models/models.dart';

class PokemonService {
  final base = 'pokeapi.co';
  final endpoint = '/api/v2/pokemon';

  Future<List<PokemonItem>> getPokemons(String offset) async {
    final url = _getPokemonsUri(offset);

    final response = await http.get(url);
    final pokemonListResponse = PokemonListResponse.fromJson(response.body);
    final pokemons = pokemonListResponse.results.map((pokemon) {
      return PokemonItem(
        name: pokemon.name,
        url: pokemon.url,
      );
    }).toList();
    return pokemons;
  }

  Uri _getPokemonsUri(String offset) {
    return Uri.https(base, endpoint, {'offset': offset});
  }

  Uri _getPokemonUri(String pokemon) {
    return Uri.https(base, '$endpoint/$pokemon');
  }

  /* Future<PokemonItem> getPokemon(String pokemon) async {
    final url = _getPokemonUri(pokemon);
    final response = await http.get(url);
    final pokemonResponse = PokemonResponse.fromJson(response.body);
    final pokemon =
  } */
}
