import 'package:flutter/material.dart';

class StackPilha extends StatefulWidget {
  @override
  State createState() => new StackPilhaState();
}


class StackPilhaState extends State<StackPilha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Barra de Título
        appBar: new AppBar(title: new Text("Stack - Pilha")),

        // Menu lateral
        drawer: new Drawer(
          // ListView <-- Itens da lista
        ),

        // Corpo do app
        body: new Stack(
          children: [
            // Elemento que está abaixo
            new Container(
              child: new Text(
                "Stack 1",
                style: new TextStyle(
                  fontSize: 32
                ),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: 350,  // Largura
              height: 450, // Altura
              color: Colors.blueAccent  // Cor
            ),

            // Elemento 2 (acima do 1)
            new Container(
              child: new Text(
                "Stack 2",
                style: new TextStyle(
                  fontSize: 32
                ),
              ),
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              width: 250,  // Largura
              height: 350, // Altura
              color: Colors.redAccent  // Cor
            ),

            // Elemento 3 (acima do 2)
            new Container(
              child: new Text(
                "Stack 3",
                style: new TextStyle(
                  fontSize: 32
                ),
              ),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              width: 150,  // Largura
              height: 250, // Altura
              color: Colors.green  // Cor
            )
          ]
        ),

        // Barra de ícones
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            // Ícone Home
            BottomNavigationBarItem(
              label: "Home",
              icon: new Icon(Icons.home)
            ),
            
            // Ícone Sair
            BottomNavigationBarItem(
              label: "Sair",
              icon: new Icon(Icons.logout)
            )
          ]
        ),
      )
    );
  }
}
