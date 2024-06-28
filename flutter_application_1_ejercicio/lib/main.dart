import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Estados app'),
    );
  }
}




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;
  String icono = 'assets/icons/1.svg';
  String img1 = 'assets/icons/2.svg';
  String img2 = 'assets/icons/3.svg';
  String letra = 'assets/fonts/monday.ttf';
  String _estado = " ";

  _MyHomePageState() {
    print('Iniciando');
  }
  @override
  void initState(){
    super.initState();
    print('initState');
    print('initState [mounted = $mounted]');
  }
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget){
    super.didUpdateWidget(oldWidget);
    print('didUpdaeWidget');
  }

  @override
  void setState(VoidCallback fn){
    super.setState(fn);
    print('setState');
  }

  @override
  void deactivate(){
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose(){
    print('dispose');
    print('reassemble: mounted = $mounted');
  }

  @override
  void reassemble(){
    super.reassemble();
    print('reassemble');
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      cambiosEstado();
    });
  }

  void _reduceCounter() {
    setState(() {
      _counter--;
      cambiosEstado();
    });
  }

  void _zeroCounter() {
    setState(() {
      _counter = 0;
      deactivate();
    });
  }

  void cambiosEstado(){
    switch(_counter){
      case 10: _estado = "Ganaste";
      icono = img1;
      break;

      case 15: _estado = "perdiste";
      icono = img2;
      break;

      default:
        _estado = "Sigue asi";
        icono =  "assets/icons/1.svg";
        break;

    }
  }


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
              'Tu numero:',
              style: TextStyle(fontFamily: 'monday'),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontFamily: 'monday'),
            ),
            Text(
              '$_estado',
              style: TextStyle(fontFamily: 'monday'),
            ),
            SvgPicture.asset(icono, width: 40, height: 40,),

          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Reducir contador
            FloatingActionButton(
                onPressed: _reduceCounter,
                child: const Icon(Icons.minimize),
                tooltip: 'Menos'),

            FloatingActionButton(
                onPressed: _zeroCounter,
                child: const Icon(Icons.reset_tv),
                tooltip: 'Reiniciar'),

            // Aumentar Contador
            FloatingActionButton(
                onPressed: _incrementCounter,
                child: const Icon(Icons.add),
                tooltip: 'Más'),
          ],
        )
      ],
    );
  }
}
