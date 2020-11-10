import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];

//contructor Empty
  _MenuProvider();

  Future<List<dynamic>> loadData() async {
    final res = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(res);
    options = dataMap['routes'];

    return options;
  }
}

final menuProvider = new _MenuProvider();
