import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class registropartida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  <Widget>[
          Row(
              children:[
                FloatingActionButton(
                    onPressed:() {
                      Navigator.of(context).pop(
                      );
                    },
                    child: iconr(),
                    tooltip: 'Regresar'
                ),
              ]
          ),
          Text('Registro',
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 40.0),
          ),
          new SizedBox(
            width: 1.0,
            height: 100.0,
            child: ElevatedButton(
                onPressed:() {
                  Navigator.of(context).pop(
                  );
                },
                child:Icon(Icons.add, color: Colors.black,size: 50,),
            ),
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