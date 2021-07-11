import 'dart:ui';

import 'package:flutter/material.dart';

//import './home.page.dart';
class lista_de_trabalho extends StatefulWidget {
  @override
  _lista_de_trabalhoState createState() => _lista_de_trabalhoState();
}

class _lista_de_trabalhoState extends State<lista_de_trabalho> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Categorias',
          style: TextStyle(
            color: Color(0xffB388FF),
          ),
        ),
        backgroundColor: Colors.brown[50],
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.brown[50],
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            /* Divider(),
            Align(
              alignment: Alignment(-0.05, -0.95),
              child: Text(
                'Categorias',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                ),
              ),
            ),*/
            Divider(),
            Expanded(
              child: GridView(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                scrollDirection: Axis.vertical,
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/3379933/pexels-photo-3379933.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'http://vidadeproduto.com.br/wp-content/uploads/2020/05/atomic-design.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.pexels.com/photos/5212320/pexels-photo-5212320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.pexels.com/photos/3862365/pexels-photo-3862365.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.pexels.com/photos/4705635/pexels-photo-4705635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.pexels.com/photos/7111591/pexels-photo-7111591.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
