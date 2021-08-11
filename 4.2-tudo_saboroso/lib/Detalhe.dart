import 'package:flutter/material.dart';

class Detalhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade700,
      padding: EdgeInsets.all(25),
      child: new Column(
        children: [
          // Título da Receita
          new Text(
            "BOLO DE MILHO CREMOSO",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24
            )
          ),

          // Espaçamento
          new SizedBox(height: 20),

          // Ícones
          new Row(
            // Distribui os elementos (colunas)
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Preparo
              new Column(
                children: [
                  // BUSCAR FONT AWESOME
                  
                  /*Icon(
                    Icons.coffee,
                    color: Colors.white,
                    size: 48,
                  ),*/

                  new SizedBox(height: 10), // Espaçamento

                  new Text(
                    "PREPARO",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  new SizedBox(height: 10), // Espaçamento

                  new Text(
                    "40 Minutos",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  )
                ],
              ),

              // Rendimento

              // Favoritos

              // Comentários
            ],
          )
        ],
      ),
    );
  }
}
