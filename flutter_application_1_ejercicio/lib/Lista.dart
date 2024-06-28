import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//pantallas
import 'main.dart';
import 'detalles.dart';
import 'Sensores.dart';
import 'Gestos.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body:
      ListView(
        children: const <Widget>[
          ListTile(
            title: Text('item 1'),
          ),
          ListTile(
            title: Text('item 2'),
          ),
          ListTile(
            title: Text('item 3'),
          ),
          ListTile(
            title: Text('item 4'),
          ),
          ListTile(
            title: Text('item 5'),
          ),

        ],

      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child:
              Icon(Icons.home),
            ),

            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Detalles'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => detalles(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Sensores'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Sensores(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Gestos'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Gestos(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
