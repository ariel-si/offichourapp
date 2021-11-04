import 'package:flutter/material.dart';

class TelaHistorico extends StatefulWidget {
  @override
  _TelaHistoricoState createState() => _TelaHistoricoState();
}

class _TelaHistoricoState extends State<TelaHistorico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Historico"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("10/05"),
            subtitle: Text("09:00 - 13:00 - 14:00 - 18:00"),
          ),
          ListTile(
            title: Text("11/05"),
            subtitle: Text("09:00 - 13:00 - 14:00 - 18:00"),
          ),
          ListTile(
            title: Text("12/05"),
            subtitle: Text("09:00 - 13:00 - 14:00 - 18:00"),
          )
        ],
      )
    );
  }
}
