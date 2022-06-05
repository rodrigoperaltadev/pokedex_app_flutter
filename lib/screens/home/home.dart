import 'package:flutter/material.dart';

import 'widgets/home_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeLayout(),
    );
  }
}
