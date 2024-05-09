import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
      ListView(
      children: <Widget>[
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
      TextField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: '',
        ),
        textAlign: TextAlign.center,
      ),
      Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Aplicacion desarrollada para seguir el progreso y establecer metas para mejorar en Valorant',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Image.network('https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2018/07/09/bdd7f4dc-89b0-442f-bce0-a1fd9a38f752/redbullplayerone'),
        ],
       ),
        TextField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: '',
          ),
          textAlign: TextAlign.center,
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