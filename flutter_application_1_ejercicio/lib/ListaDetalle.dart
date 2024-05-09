import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1_ejercicio/Mapas.dart';
import 'package:flutter_application_1_ejercicio/Misiones.dart';
import 'package:flutter_application_1_ejercicio/registropartida.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  <Widget>[
          Row(
           children:<Widget>[
           FloatingActionButton(
                onPressed:() {
                  Navigator.of(context).pop(
                  );
                },
                child: iconr(),
                tooltip: 'Regresar'

            ),
             Text('Regresar',
             textAlign: TextAlign.center,
             style: new TextStyle(
             fontSize: 20.0),
             ),
           ],
          ),
          Text('Mapa',
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 50.0),
             ),
          FloatingActionButton( //registro de partida
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Mapas(),
                ),
              );
            },
            child: Icon(Icons.map, size: 50.0,),
          ),
          Text('Registro',
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 50.0),
              ),
          FloatingActionButton( //Lista
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => registropartida(),
                ),
              );
            },
            child: Icon(Icons.list, size: 50.0,),
          ),
          Text('Misiones',
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 50.0),
          ),
          FloatingActionButton( //Lista
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Misiones(),
                ),
              );
            },
            child: Icon(Icons.account_circle, size: 50.0,),
          ),
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
