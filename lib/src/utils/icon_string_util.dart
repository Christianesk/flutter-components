import 'package:flutter/material.dart';
import 'package:components/src/utils/global_util.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
};

Icon getIcon(String nameIcon) {
  return Icon(_icons[nameIcon], color: Color(colorApplication));
}
