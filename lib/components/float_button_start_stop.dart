import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:offichour_app/modal/registro.dart';

import 'botton_app_bar.dart';
import 'box_dialogo.dart';

class FloatButtonStartStop extends StatefulWidget {
  @override
  State<FloatButtonStartStop> createState() => _FloatButtonStartStopState();
}

class _FloatButtonStartStopState extends State<FloatButtonStartStop> {
  bool _isStart = true;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      child: Icon(_isStart ? Icons.play_arrow : Icons.stop),
      onPressed: _startStopButtonPressed,
    );
  }

  void _startStopButtonPressed() {
    var now = new DateTime.now();
    String formattedDate = DateFormat('HH:mm:ss').format(now);

    showDialog(
      context: context,
      builder: (BuildContext context) => BoxDialogo(formattedDate),
    );
    setState(
      () {
        Registro(hora: formattedDate);
        BottonAppBar();
        if (!_isStart) {
          _isStart = true;
        } else {
          _isStart = false;
        }
      },
    );
  }
}
