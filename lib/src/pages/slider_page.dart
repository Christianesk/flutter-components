import 'package:flutter/material.dart';
import 'package:components/src/utils/global_util.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valueSlider = 150.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Slider'),
        backgroundColor: Color(colorApplication),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _createSlider(),
            Expanded(
              child: _createImage()
            )
          ],
        ),
      ),
      
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Image Size',
      value: _valueSlider,
      min: 10.0,
      max: 400.0, 
      onChanged: (value)=>
        setState(() {
          _valueSlider=value;
        })
    );
     
  }

  Widget _createImage() {
    return FadeInImage(
      placeholder: AssetImage('assets/load-spinner.gif'),
      image: NetworkImage('https://c0.klipartz.com/pngpicture/81/5/gratis-png-totoro-art-catbus-t-shirt-studio-ghibli-anime-pintura-totoro.png'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }
}