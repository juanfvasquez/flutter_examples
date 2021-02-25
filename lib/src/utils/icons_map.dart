import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
  'list': Icons.list,
  'tune': Icons.tune,
  'add': Icons.add,
  'remove': Icons.remove,
  'delete': Icons.delete,
  'email': Icons.email,
  'edit': Icons.edit,
  'person': Icons.person,
  'person_add': Icons.person_add,
  'play_arrow': Icons.play_arrow,
  'arrow_back': Icons.arrow_back,
  'arrow_back_ios': Icons.arrow_back_ios,
  'arrow_forward': Icons.arrow_forward,
  'arrow_forward_ios': Icons.arrow_forward_ios,
  'keyboard_arrow_right': Icons.keyboard_arrow_right,
  'warning_amber_sharp': Icons.warning_amber_sharp
};

Icon getIcon({String icon, Color color}) => Icon(
    icon == null || _icons[icon] == null
        ? _icons['warning_amber_sharp']
        : _icons[icon],
    color: color != null ? color : Colors.blue);
