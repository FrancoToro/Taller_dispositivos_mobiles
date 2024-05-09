import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Misiones extends StatelessWidget {
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
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Checkbox(
                      value: false,
                      onChanged: (bool? value){}
                  ),
                  Text('5 minutos de practica',
                    style: new TextStyle(
                        fontSize: 25.0),),
                ],
              ),
              Row(
                children: <Widget>[

                  Checkbox(
                      value: false,
                      onChanged: (bool? value){}
                  ),
                  Text('practica con bots nivel medio',
                    style: new TextStyle(
                        fontSize: 18.0),),
                ],
              ),
              Row(
                children: <Widget>[

                  Checkbox(
                      value: false,
                      onChanged: (bool? value){}
                  ),
                  Text('practica con bots nivel dificil',
                    style: new TextStyle(
                        fontSize: 18.0),),
                ],
              ),
            ],
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