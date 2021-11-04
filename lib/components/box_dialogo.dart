import 'package:flutter/material.dart';

class BoxDialogo extends StatelessWidget {

  String msg;

  BoxDialogo(this.msg);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Ponto registrado com sucesso"),
      content: Text("Ponte registrado: $msg"),
      actions: [
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "OK!",
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
            ),
          ),
        )
      ],
    );
  }
}
