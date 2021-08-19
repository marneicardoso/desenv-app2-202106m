import 'package:agenda_contatos/View/busca.dart';
import 'package:agenda_contatos/View/cadastro.dart';
import 'package:agenda_contatos/View/recursos/barraSuperior.dart';
import 'package:agenda_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de título
      appBar: new BarraSuperior(),

      // Menu (hambúrguer)
      drawer: new MenuDrawer(),

      // Corpo do App
      body: SingleChildScrollView(
        child: Column(
          children: [
            new SizedBox(height: 25), // Espaçamento

            new Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  // Título
                  new Text(
                    "Buenas, o que vamos fazer?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey.shade300
                    )
                  ),

                  new SizedBox(height: 45), // Espaçamento

                  // Botão Buscar Contatos
                  new Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new FaIcon(
                                FontAwesomeIcons.search,
                                color: Colors.white,
                                size: 24
                              ),

                              new Text(
                                "Buscar Contatos",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24
                                )
                              ),
                            ],
                          )
                        ),
                        
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => new Busca())
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange.shade800
                        )
                      );
                    }
                  ),

                  SizedBox(height: 15),

                  // Botão Cadastrar Contato
                  new Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 24
                              ),

                              new Text(
                                "Cadastrar Contato",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24
                                )
                              ),
                            ],
                          )
                        ),
                        
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => new Cadastro()
                            )
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange
                        )
                      );
                    }
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}
