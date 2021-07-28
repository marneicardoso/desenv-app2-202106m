import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // Barra de Título
      appBar: new AppBar(
        title: new Text("Layout - Flutter"),
      ),

      // Menu Lateral (hambúrguer)
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Cabeçalho do Menu
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Itens do Menu")),

            // Item 1
            ListTile(
              title: new Text("Flutter"),
              subtitle: new Text("Tudo são Widgets"),
              leading: Icon(
                Icons.flash_on,
                color: Colors.red,
                size: 32,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            ),

            // Item 2
            ListTile(
              title: new Text("Dart"),
              subtitle: new Text("É fácil"),
              leading: Icon(
                Icons.mood,
                color: Colors.amber.shade700,
                size: 32,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            ),

            // Item 3
            ListTile(
              title: new Text("Cafessíneo"),
              subtitle: new Text("Quero cafééé"),
              leading: Icon(
                Icons.coffee,
                color: Colors.brown.shade700,
                size: 32,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),

      // Corpo do App
      body: new Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: new Text("Buenas, esta é uma Snackbar"),
              action: SnackBarAction(
                label: "x",
                onPressed: () {
                  // Aqui vai o código de alguma ação...
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text("Mostrar SnackBar"),
        ),

        /*child: new Container(
          child: Text("Conhecendo o Material App"),
        )*/
      ),

      // Barra de Ícones (inferior)
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          // Ícone Home
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home"),

          // Ícone Configurações
          BottomNavigationBarItem(
              icon: new Icon(Icons.settings), label: "Configurações"),

          // Ícone Login
          BottomNavigationBarItem(icon: new Icon(Icons.login), label: "Login")
        ],
      ),
    ));
  }
}
