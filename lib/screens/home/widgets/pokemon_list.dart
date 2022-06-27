import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_coco_version/controllers/controllers.dart';
import 'package:pokedex_coco_version/models/models.dart';
import 'package:pokedex_coco_version/routes/app_routes.dart';
import 'package:pokedex_coco_version/themes/themes.dart';
import 'package:pokedex_coco_version/widgets/widgets.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pokemonController = Get.find<PokemonController>();
    final pokemons = pokemonController.pokemons;

    return Container(
        color: Colors.white,
        child: Obx(() {
          return pokemonController.firstFetching
              ? const Center(child: CircularProgressIndicator())
              : _List(pokemons: pokemons);
        }));
  }
}

class _List extends StatefulWidget {
  final List<Pokemon> pokemons;

  const _List({Key? key, required this.pokemons}) : super(key: key);

  @override
  State<_List> createState() => _ListState();
}

class _ListState extends State<_List> {
  final ScrollController scrollController = new ScrollController();
  final pokemonController = Get.find<PokemonController>();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (canDoFetch()) {
        pokemonController.fetchPokemonList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: widget.pokemons.length,
      itemBuilder: (context, index) =>
          _PokemonListItem(pokemon: widget.pokemons[index]),
    );
  }

  bool canDoFetch() {
    final currentPosition = scrollController.position.pixels;
    final limitPosition = scrollController.position.maxScrollExtent - 200;
    return currentPosition >= limitPosition &&
        !pokemonController.isLoading.value;
  }
}

class _PokemonListItem extends StatelessWidget {
  final Pokemon pokemon;

  const _PokemonListItem({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(AppRoutes.details),
      child: ListItemWrapper(
          child: Row(
        children: [
          _PokemonListItemImage(
            src: pokemon.image,
          ),
          Expanded(child: _PokemonListItemName(pokemon: pokemon)),
          _PokemonListItemType(),
        ],
      )),
    );
  }
}

class _PokemonListItemImage extends StatelessWidget {
  final String src;
  const _PokemonListItemImage({Key? key, required this.src}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
        fit: BoxFit.cover,
        height: 150,
        placeholder: AssetImage('assets/pokeball.png'),
        image: NetworkImage(src));
  }
}

class _PokemonListItemName extends StatelessWidget {
  final Pokemon pokemon;
  const _PokemonListItemName({Key? key, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            pokemon.name,
            style: const TextStyle(fontSize: 20, color: AppTheme.back1),
          ),
          Text(
            pokemon.displayId,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class _PokemonListItemType extends StatelessWidget {
  const _PokemonListItemType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        Image.asset(
          'assets/grass.png',
          scale: 0.8,
        ),
      ],
    );
  }
}
