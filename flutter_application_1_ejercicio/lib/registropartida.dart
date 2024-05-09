import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class registropartida extends StatelessWidget {
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
          FloatingActionButton(
              onPressed:() {

              },
              child: Icon(Icons.add),
              tooltip: 'Regresar'
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