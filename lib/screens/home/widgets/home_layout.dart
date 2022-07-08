import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_coco_version/controllers/controllers.dart';
import 'package:pokedex_coco_version/screens/home/widgets/items_list.dart';
import 'package:pokedex_coco_version/screens/home/widgets/moves_list.dart';
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
          children: const [CustomAppBar(), _Body(), CustomBottomNavigation()],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Expanded(
      child: Obx(() => IndexedStack(
            index: homeController.tabIndex.value,
            children: const [PokemonList(), MovesList(), ItemsList()],
          )),
    );
  }
}
