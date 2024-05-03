import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: ListView(
        children:  <Widget>[
          Center(
           child:
           FloatingActionButton(
                onPressed:() {
                  Navigator.of(context).pop(
                  );
                },
                child: icon3(),
                tooltip: 'Reiniciar'
            ),
          ),
        ListTile(
          leading: Icon(Icons.map),
            title: Text('Map'),
          ),
        ListTile(
          leading: Icon(Icons.photo_album),
             title: Text('Album'),
           ),
          ListTile(
          leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
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