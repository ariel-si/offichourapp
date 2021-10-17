import 'dart:async';

import 'package:flutter/material.dart';
import 'package:offichour_app/ui/telaHistorico.dart';
import 'package:offichour_app/ui/telaSolicitarAjuste.dart';
import 'package:intl/intl.dart';

import 'package:offichour_app/widget/mapaWidget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var ultimoRegistrado = "00:00:00", duracao = "00:00";
  String local = "Local não encontrado";
  IconData icone = Icons.play_arrow_rounded;

  bool _isStart = true;
  String _stopwatchText = '00:00:00';
  final _stopWatch = new Stopwatch();
  final _timeout = const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {

    final drawerItems = ListView(
      children: [
        ListTile(
          leading: Icon(Icons.alarm_add),
          title: Text('Solicitar Correção'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>TelaSolicitarAjuste(),
                )
            );
          }
        ),
        ListTile(
          leading: Icon(Icons.add_box),
          title: Text('Enviar Atestado'),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text('Historico'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>TelaHistorico(),
                )
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.chat),
          title: Text('Chat'),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configuração'),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.power_settings_new),
          title: Text('Sair'),
          onTap: (){
          },
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[900],
        child: Icon(_isStart ? Icons.play_arrow : Icons.stop),
        onPressed: _startStopButtonPressed,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.amber,
          height: 70.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Ultimo Registrado: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text("$ultimoRegistrado"),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Duração: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(_stopwatchText),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Local: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(this.local),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
  void _startTimeout() {
    new Timer(_timeout, _handleTimeout);
  }

  void _handleTimeout() {
    if (_stopWatch.isRunning) {
      _startTimeout();
    }
    setState(() {
      _setStopwatchText();
    });
  }

  void _startStopButtonPressed() {
    var now = new DateTime.now();
    String formattedDate = DateFormat('HH:mm:ss').format(now);
    setState(() {
      ultimoRegistrado = formattedDate;
      if (_stopWatch.isRunning) {
        _isStart = true;
        _stopWatch.reset();
        _stopWatch.stop();
      } else {
        _isStart = false;
        _stopWatch.start();
        _startTimeout();
      }
    });
  }

  void _setStopwatchText(){
    _stopwatchText = _stopWatch.elapsed.inHours.toString().padLeft(2,'0') + ':'+
        (_stopWatch.elapsed.inMinutes%60).toString().padLeft(2,'0') + ':' +
        (_stopWatch.elapsed.inSeconds%60).toString().padLeft(2,'0');
  }
}