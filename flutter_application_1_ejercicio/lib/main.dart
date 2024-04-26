import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        fontFamily: 'letra',
      ),
      home: const MyHomePage(title: 'Primer Juego '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => CardBase();
}

/*class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '',//mensaje de victoria o derrota
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      persistentFooterButtons: [
        //Row botones,
        )
      ],
    );
  }
}*/

class CardBase extends State<MyHomePage> {
  int _counter = 0;
  bool Vivo = false;
  bool Victoria= false;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _reduceCounter() {
    setState(() {
      _counter--;
    });
  }

  void _zeroCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _Puntaje(){
    if(_counter==10)
      {
        Vivo=false;
        Victoria=false;
      }
    if(_counter==15)
      {
        Vivo=false;
        Victoria=true;
      }
  }
  String _revision(){
    if(Victoria==true)
      {
        return 'Assets/Icons/vic.svg';
      }
    return 'Assets/Icons/der.svg';
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Aplicacion basica'),
              subtitle: Text('Primer juego.'),
            ),
            Row(
              children: [
                Expanded(
                  child: SvgPicture.asset(_revision()),
                ),
              ],
            ),
            Row(


              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                const Text(
                  'Puntos:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                // Reducir contador
                FloatingActionButton(
                    onPressed: _reduceCounter,
                    child: const Icon(Icons.minimize),
                    tooltip: 'Menos'
                ),
                //reiniciar contador

                Visibility(
                  child:FloatingActionButton(
                    onPressed: _zeroCounter,
                    child: const Icon(null),
                    tooltip: 'Reiniciar',
                  ),
                  visible: Vivo,
                ),
                // Aumentar Contador
                FloatingActionButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add),
                    tooltip: 'Más'
                ),

                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//imagen de victoria
class img_vic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'Assets/Icons/vic.svg',
      semanticsLabel: 'My SVG Image',
      width: 50,
      height:50,
    );
  }
}
//imagen de derrota
class img_der extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'Assets/Icons/der.svg',
      semanticsLabel: 'My SVG Image',
      width: 50,
      height:50,
    );
  }
}
//imagen de restart
class img_rest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'Assets/Icons/rest.svg',
      semanticsLabel: 'My SVG Image',
      width: 50,
      height:50,
    );
  }
}