import 'package:agenda_contatos/View/recursos/barraSuperior.dart';
import 'package:agenda_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Busca extends StatefulWidget {
  @override
  State createState() => new BuscaState();
}

class BuscaState extends State<Busca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de Título
      appBar: new BarraSuperior(),

      // Menu (hambúrguer)
      drawer: new MenuDrawer(),

      // Corpo do App
      body: ListView.builder(
        // padding: EdgeInsets.fromLTRB(8, 8, 8, 75),
        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
        itemCount: 3, // << Ajustar
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.grey.shade800,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Foto (miniatura)
                  new ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "img/fotos/1.png",
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover
                    )
                  ),

                  // Nome e Fone

                  // SizedBox(width: 15)
                ]
              ),

              trailing: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.grey,
                  size: 32
                ),
                onPressed: () {
                  //
                }
              )
            )
          );
        }
      )
    );
  }
}
