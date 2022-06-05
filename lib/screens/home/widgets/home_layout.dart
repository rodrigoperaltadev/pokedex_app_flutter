import 'package:flutter/material.dart';
import 'package:pokedex_coco_version/screens/home/widgets/widgets.dart';
import 'package:pokedex_coco_version/themes/themes.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppTheme.defaultGradient,
      ),
      child: SafeArea(
        child: Column(
          children: const [
            CustomAppBar(),
            Expanded(child: PokemonList()),
            BottomAppBar()
          ],
        ),
      ),
    );
  }
}
