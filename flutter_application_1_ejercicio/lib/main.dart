import 'package:flutter/material.dart';
import 'package:flutter_application_1_ejercicio/ListaDetalle.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detail.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'Warzone',
      ),
      home: const MyHomePage(title: 'Titulo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://img.freepik.com/vector-gratis/ilustracion-icono-doodle-engranaje_53876-5596.jpg?size=338&ext=jpg&ga=GA1.1.1687694167.1714608000&semt=sph'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Mensaje',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            FloatingActionButton(
                onPressed: _zeroCounter,
                child: icon3(),
                tooltip: 'Reiniciar'),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          // Ordena los iconos en separación

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Reducir contador
            FloatingActionButton( //Lista
                onPressed: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) => ListDetail(),
                    ),
                  );
                },
                child: icon1(),
            ),
            // Aumentar Contador
            FloatingActionButton(//Detalle
                onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Detail(),
                    ),
                  );
                },
                child: icon2(),
                ),
          ],
        )
      ],
    );
  }
}

class icon1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SvgPicture.asset('Assets/Icons/1.svg',
    semanticsLabel: '1',
    width: 50,
    height: 50,);
  }
}

class icon2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SvgPicture.asset('Assets/Icons/2.svg',
      semanticsLabel: '1',
      width: 50,
      height: 50,);
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
