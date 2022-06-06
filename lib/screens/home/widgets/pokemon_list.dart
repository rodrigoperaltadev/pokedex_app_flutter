import 'package:flutter/material.dart';
import 'package:pokedex_coco_version/themes/themes.dart';
import 'package:pokedex_coco_version/widgets/widgets.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: getItemBuilder,
        ));
  }

  Widget getItemBuilder(BuildContext context, int index) {
    return const _PokemonListItem();
  }
}

class _PokemonListItem extends StatelessWidget {
  const _PokemonListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListItemWrapper(
        child: Row(
      children: const [
        _PokemonListItemImage(),
        Expanded(child: _PokemonListItemName()),
        _PokemonListItemType(),
      ],
    ));
  }
}

class _PokemonListItemImage extends StatelessWidget {
  const _PokemonListItemImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/pokemon.png');
  }
}

class _PokemonListItemName extends StatelessWidget {
  const _PokemonListItemName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Bulbasaur',
            style: TextStyle(fontSize: 20, color: AppTheme.back1),
          ),
          Text(
            '#001',
            style: TextStyle(fontSize: 16, color: Colors.grey),
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
