import 'package:flutter/material.dart';

class TudoSaboroso extends StatefulWidget {
  @override
  State createState() => new TudoSaborosoState();
}

class TudoSaborosoState extends State<TudoSaboroso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de título
      appBar: new AppBar(
        title: new Text("Tudo Saboroso"),
        backgroundColor: Colors.orange,
        leadingWidth: 45,
        leading: new Transform.translate(
          offset: new Offset(5, 0),
          child: Image.asset("img/chef.png")
        ),
      ),

      // Menu de opções
      //drawer: ,

      // Corpo do App
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Foto
            Image.asset("img/bolo_milho.jpg")

            // Informações

            // Ingredientes


          ],
        )
      )

      // Barra inferior
      //bottomNavigationBar: ,
    );
  }
}
