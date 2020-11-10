import 'package:flutter/material.dart';
import 'package:components/src/utils/global_util.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Color(colorApplication),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20190710/ourmid/pngtree-user-vector-avatar-png-image_1541962.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
          )
        ],
        ),
        body: Center(
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            child: FadeInImage(
              image: NetworkImage('https://maguared.gov.co/wp-content/uploads/2015/08/totoro.jpg'),
              placeholder: AssetImage('assets/load-spinner.gif'),
              fadeInDuration: Duration(milliseconds: 200),
            ),
          ),
        ),
    );
  }
}
