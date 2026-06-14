import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

// STATELESS: la estructura de la app. Nunca cambia.
class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Marcador());
  }
}

// STATEFUL: el marcador. Cambia con cada gol.
class Marcador extends StatefulWidget {
  @override
  State<Marcador> createState() => _MarcadorState();
}

class _MarcadorState extends State<Marcador> {
  int goles = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('🏆 Mundial 2026')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('🇨🇷 Costa Rica', style: TextStyle(fontSize: 30)),
            Text('$goles', style: TextStyle(fontSize: 80)),
            ElevatedButton(
              onPressed: sumarGol,
              child: Text('⚽ ¡GOL!'),
            ),
          ],
        ),
      ),
    );
  }

  void sumarGol() {
    setState(() {
      goles = goles + 1;
    });
  }
}