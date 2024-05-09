import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mapas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  <Widget>[
          Center(
            child:
            FloatingActionButton(
                onPressed:() {
                  Navigator.of(context).pop(
                  );
                },
                child: iconr(),
                tooltip: 'Regresar'
            ),
          ),
          Text('Mapas',
          textAlign: TextAlign.center,
            style: new TextStyle(
            fontSize: 50.0),
          ),
          //Mapas del juego
          Text('ascent',
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 25.0),
          ),
          Image.asset('Assets/img/map/ascent.png'),

          Text('bind',
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 25.0),
          ),
          Image.asset('Assets/img/map/bind.png'),

          Text('breeze',
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 25.0),
          ),
          Image.asset('Assets/img/map/breeze.png'),

          Text('icebox',
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 25.0),
          ),
          Image.asset('Assets/img/map/icebox.png'),

          Text('lotus',
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 25.0),
          ),
          Image.asset('Assets/img/map/lotus.png'),

          Text('split',
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 25.0),
          ),
          Image.asset('Assets/img/map/split.png'),

          Text('sunset',
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 25.0),
          ),
          Image.asset('Assets/img/map/sunset.png'),

        ],
      ),
    );
  }
}
class iconr extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SvgPicture.asset('Assets/Icons/r.svg',
      semanticsLabel: '1',
      width: 50,
      height: 50,);
  }
}