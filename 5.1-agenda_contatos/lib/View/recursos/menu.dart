import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  // Atributos vindos do Banco de Dado (simulação)
  final String usuario = "Marnei Cardoso";
  final String email = "prof.marneicardoso@gmail.com";
  final String fotoPerfil = "img/perfil.jpg";

  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 18
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Foto e Informações do Usuário
          UserAccountsDrawerHeader(
            accountName: Text(usuario),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                child: Image.asset(fotoPerfil),
                borderRadius: BorderRadius.circular(50)
              )
            )
          ),

          ListTile()
        ]
      )
    );
  }
}
