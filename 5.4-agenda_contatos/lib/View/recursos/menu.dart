import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:agenda_contatos/View/busca.dart';
import 'package:agenda_contatos/View/home.dart';
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
          new UserAccountsDrawerHeader(
            accountName: Text(usuario),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                child: Image.asset(fotoPerfil),
                borderRadius: BorderRadius.circular(50)
              )
            )
          ),

          // Home
          new ListTile(
            title: mostrarTitulo("Home"),
            subtitle: Text("Página inicial"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.home,
              color: Colors.orange.shade400,
              // color: Colors.orange[400],
              // color: Color(0x55ffa726),
              size: 32
            ),

            // Abre a tela Home
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new Home())
              );
            }
          ),

          // Contatos
          new ListTile(
            title: mostrarTitulo("Contatos"),
            subtitle: Text("Gerenciar contatos"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.userFriends,
              color: Colors.blue.shade400,
              size: 32
            ),

            // Abre a tela Contatos
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new Busca())
              );
            }
          ),

          // Perfil
          new ListTile(
            title: mostrarTitulo("Perfil"),
            subtitle: Text("Editar informações"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.idCard,
              color: Colors.red.shade400,
              size: 32
            ),

            // Abre a tela Perfil
            onTap: () {
              //
            }
          ),

          // Configurações
          new ListTile(
            title: mostrarTitulo("Configurações"),
            subtitle: Text("Ajustes no Sistema"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.cogs,
              color: Colors.teal.shade400,
              size: 32
            ),

            // Abre a tela Configurações
            onTap: () {
              //
            }
          ),
          
          // Logout
          new ListTile(
            title: mostrarTitulo("Logout"),
            subtitle: Text("Sair do Sistema"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.signOutAlt,
              color: Colors.grey,
              size: 32
            ),

            // Abre a tela Logout
            onTap: () {
              //
            }
          )
        ]
      )
    );
  }
}
