import 'package:flutter/material.dart';
import 'package:components/src/utils/global_util.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Alert Page'), 
          backgroundColor: Color(colorApplication)
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Color(colorApplication),
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()=>_showAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(colorApplication),
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }


  void _showAlert(BuildContext context){
    showDialog(
      context:context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Content this alert'),
              FlutterLogo(size: 100.0)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: ()=>Navigator.of(context).pop(), 
              child: Text('Cancel') 
            ),
            FlatButton(
              onPressed: (){}, 
              child: Text('Ok') 
            )
          ],
        );
      }
    );
  }
}
