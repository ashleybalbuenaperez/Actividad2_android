  
import 'package:flutter/material.dart';

void main() => runApp(TetosApp());

class TetosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Veterinaria Patitas',
        theme: ThemeData(
          //el fondo va dentro de el tema
          primarySwatch: Colors.pink,
        ), //finthemedata
        //ruta de ventanas enganchar a los widgets
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/empresa": (BuildContext context) => Empresa(),
          "/productos": (BuildContext context) => Productos(),
          "/contacto": (BuildContext context) => Contactos(),
        }, //fin routes- es el mapa de los botones de el menu

        home: Inicio()); //cierre de material app
  } //fin widget context
} //fin TetosApp class

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Empresa Veterinaria Patitas'),
      ), //findeappbar

    ); //fin de scaffold
  } //fin widget context
} //fin de la clase empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Productos Veterinaria Patitas'),
      ), //findeappbar

    ); //fin de scaffold
  } //fin widget context
} //fin de la clase productos

class Contactos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Contactos Veterinaria Patitas'),
      ), //findeappbar

    ); //fin de scaffold
  } //fin widget context
} //fin de la clase contactos

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 250, bottom: 20, right: 10, left: 10),
        decoration: BoxDecoration(color: Colors.black, image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/ashleybalbuenaperez/Mis_Imagenes/main/fondo.jpg"), alignment: Alignment.topCenter) //fin de decoration image
            ), //fin box decoration

//hacemos la columna de el mapa
        child: Column(
          children: <Widget>[
            //hacemos la primera fila de el mapa
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

                      onPressed: () {
                        Navigator.pushNamed(context, "/inicio");
                      }, //onpressed
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "INICIO",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w900),
                          ), //fin del center
                        ), //fin center
                      ), //fin sizedbox de inicio
                    ), //boton inicio
                  ) //fin padding
                ], //fin widget niño
              ), //fin de column dentro de column interna 1
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/empresa");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("EMPRESA", textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  )
                ],
              ), //r1 columna 2
            ] //segundo children fin 2 widget
                ), //cierre de row- fila 1

//inicio de la fila 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/productos");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("PRODUCTOS", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ), // row 2 fin columna 1
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/contacto");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("CONTACTO", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ], //fin children del 2-2
                ), //fin row2 columna 2
              ],
            ), //fin row 2 fila 2
          ], //cierre de children widget 1
        ), //cierre de column en el child
      ), //fin del container
    ); //fin scaffold
  } //fin de el widget inicio
} //fin de inicio