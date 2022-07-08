import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_coco_version/controllers/controllers.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Obx(() => Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            selectedItemColor: Colors.black,
            onTap: homeController.changeTabIndex,
            currentIndex: homeController.tabIndex.value,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Pokemon",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Moves",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Items",
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ));
  }
}
