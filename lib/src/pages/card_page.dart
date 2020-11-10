import 'package:flutter/material.dart';
import 'package:components/src/utils/global_util.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Color(colorApplication),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0)
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Color(colorApplication)),
            title: Text('Card Title'),
            subtitle: Text('Card Subtitle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/load-spinner.gif'),
            image: NetworkImage(
                'https://www.pixelstalk.net/wp-content/uploads/2016/12/Download-Free-Beautiful-Landscape-Wallpaper.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Card Title'),
          )
        ],
      ),
    );
  }
}
