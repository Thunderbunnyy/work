import 'package:flutter/material.dart';


class PopupMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;

  const PopupMenu({Key? key, required this.menuList, this.icon }) : super(key: key);

  @override
  Widget build(BuildContext context, ) {
    return PopupMenuButton(
      shape: const RoundedRectangleBorder(
          borderRadius:
          BorderRadius.vertical(top: Radius.circular(20))),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}
