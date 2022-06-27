import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pokedex_coco_version/controllers/controllers.dart';
import 'widgets/home_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PokemonController());

    return const Scaffold(
      body: HomeLayout(),
    );
  }
}
