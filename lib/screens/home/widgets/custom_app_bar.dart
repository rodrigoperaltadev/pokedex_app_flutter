import 'package:flutter/material.dart';
import 'package:pokedex_coco_version/themes/themes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: const [_Title(), SizedBox(height: 10), _InputSearch()],
      ),
    );
  }
}

class _InputSearch extends StatelessWidget {
  const _InputSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search),
        fillColor: Colors.grey.withOpacity(0.4),
        filled: true,
        iconColor: AppTheme.back1,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Pokedex',
      style: TextStyle(
        fontSize: 20,
        color: Colors.black87,
      ),
    );
  }
}
