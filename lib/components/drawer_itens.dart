import 'package:flutter/material.dart';
import 'package:offichour_app/ui/telaHistorico.dart';
import 'package:offichour_app/ui/telaSolicitarAjuste.dart';

class DrawerItens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.alarm_add),
            title: Text('Solicitar Correção'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaSolicitarAjuste(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add_box),
            title: Text('Enviar Atestado'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Historico'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaHistorico(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chat'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuração'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.power_settings_new),
            title: Text('Sair'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
