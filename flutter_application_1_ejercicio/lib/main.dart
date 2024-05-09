import 'package:flutter/material.dart';
import 'package:flutter_application_1_ejercicio/ListaDetalle.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'detail.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
        fontFamily: 'Valorant',
      ),
      home: const MyHomePage(title: 'Registro de Progreso'),
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
            Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Valorant_logo_-_pink_color_version.svg/816px-Valorant_logo_-_pink_color_version.svg.png'),
            Text(
              'Registro de avance',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              children: <Widget>[],
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Reducir contador
            new SizedBox(
              width: 150.0,
              height: 100.0,
              child: ElevatedButton(
                child: icon3(),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ListDetail(),
                    ),
                  );
                },
              ),
            ),
            new SizedBox(
              width: 150.0,
              height: 100.0,
              child: ElevatedButton(
                child: icon2(),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Detail(),
                    ),
                  );
                },
              ),
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
    width: 100,
    height: 100,);
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
