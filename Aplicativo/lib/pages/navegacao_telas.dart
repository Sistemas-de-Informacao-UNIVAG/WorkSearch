import 'package:WorkSearch/pages/categoria.page.dart';
import 'package:WorkSearch/pages/menuatualizado.dart';
import 'package:flutter/material.dart';
import 'home.page.dart';

class Pageconfiguration extends StatefulWidget {
  @override
  _PageconfigurationState createState() => _PageconfigurationState();
}

class _PageconfigurationState extends State<Pageconfiguration> {
  List<Widget> pageList = <Widget>[
    HomePage(),
    lista_de_trabalho(),
    MyHomePage(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ("Inicial")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: ("Categorias")),
          BottomNavigationBarItem(
              backgroundColor: Colors.cyan,
              icon: Icon(Icons.settings),
              label: ("Configurações")),
        ],
      ),
    );
  }
}
