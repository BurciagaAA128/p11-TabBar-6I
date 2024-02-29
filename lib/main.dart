import 'package:flutter/material.dart';

void main() => runApp(const AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar Aaron Burciaga",
      theme: ThemeData(primarySwatch: Colors.red),
      home: MiPaginaInicial(),
    );
  }
} //Fin AppMiTabBar

//Stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabbar Aaron Burciaga"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "Platillos",
              icon: Icon(Icons.lunch_dining),
            ),
            Tab(
              text: "Bebidas",
              icon: Icon(Icons.no_drinks),
            ),
            Tab(
              text: "Gerente",
              icon: Icon(Icons.badge),
            ),
            Tab(
              text: "Clientes",
              icon: Icon(Icons.people),
            ),
          ] //Fin de tabs
              ), //Fin bottom TabBar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Hamburguesa",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Tequila",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Aarón",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Valeria",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ] //Jardin de niños
            ), //Fin de tabbarview
      ), //Fin de scaffold
    ); //Fin DefaultTabController
  } // Fin widget
} //_MiPaginaInicialState
