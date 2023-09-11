// Creado por: Gabriel Guzmán García
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isIconHeart = true; // Variable de estado para controlar el icono

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(
              255, 228, 10, 217), // Cambia el color del AppBar a azul
          title: Text("Gabriel Guzman :200448"),
        ),
        body: Center(
          child: Text("Gabriel Guzman : 200448 Practica 4"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              // Cambiar el estado del icono al hacer clic
              isIconHeart = !isIconHeart;
              print('Hizo click');
            });
          },
          child: isIconHeart
              ? Icon(Icons.favorite) // Icono cuando isIconHeart es true
              : Icon(
                  Icons.favorite_border), // Icono cuando isIconHeart es false
        ),
      ),
    );
  }
}
