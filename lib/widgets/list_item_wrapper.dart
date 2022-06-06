import 'package:flutter/material.dart';

class ListItemWrapper extends StatelessWidget {
  const ListItemWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      height: 80,
      decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black12,
              width: 1,
            ),
          ),
          color: Colors.white),
      child: child,
    );
  }
}
