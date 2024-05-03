import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Texto de detalles',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          FloatingActionButton(
              onPressed:(){
                Navigator.of(context).pop(
                  );
                },
              child: icon3(),
              tooltip: 'Reiniciar'),
        ],
      ),
    ),
    );
  }
}
class icon3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SvgPicture.asset('Assets/Icons/3.svg',
      semanticsLabel: '1',
      width: 50,
      height: 50,);
  }
}