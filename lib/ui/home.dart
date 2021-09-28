import 'package:flutter/material.dart';
import 'package:offichour_app/widget/controleWidget.dart';
import 'package:offichour_app/widget/floatingBottomWidget.dart';

import 'package:offichour_app/widget/mapaWidget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    final drawerItems = ListView(
      children: [
        ListTile(
          leading: Icon(Icons.alarm_add),
          title: Text('Solicitar Correção'),
          onTap: (){
          }
        ),
        ListTile(
          leading: Icon(Icons.add_box),
          title: Text('Enviar Atestado'),
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text('Historico'),
        ),
        ListTile(
          leading: Icon(Icons.chat),
          title: Text('Chat'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configuração'),
        ),
        ListTile(
          leading: Icon(Icons.power_settings_new),
          title: Text('Sair'),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: false,
        title: Text(
          "OfficHour",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
        elevation: 10,
      ),
      body: MapaWidget(),
      floatingActionButton: FloatingBottomWidget(),
      bottomNavigationBar: ControleWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}