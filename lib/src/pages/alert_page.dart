import 'package:flutter/material.dart';
import 'package:components/src/utils/global_util.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Alert Page'), backgroundColor: Color(colorApplication)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(colorApplication),
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
