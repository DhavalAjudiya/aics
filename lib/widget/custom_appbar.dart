import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final PreferredSizeWidget? bottom;
  final VoidCallback? onPressed;
  final Widget? child;

  const CustomAppBar({Key? key, this.bottom, this.onPressed, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      leading: IconButton(
        icon: const Icon(
          Icons.apps,
          color: Colors.white,
        ),
        onPressed: onPressed,
      ),
      title: Center(
        child: child,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 25,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_outlined,
            size: 25,
            color: Colors.white,
          ),
        ),
      ],
      bottom: bottom,
    );
  }
}
