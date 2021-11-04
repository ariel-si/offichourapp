import 'package:flutter/material.dart';
import 'package:offichour_app/modal/registro.dart';

class BottonAppBar extends StatefulWidget {

  @override
  State<BottonAppBar> createState() => _BottonAppBarState();
}

class _BottonAppBarState extends State<BottonAppBar> {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.all(10),
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
                Text(" ${Registro().hora}"),
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
                Text("Rua Padre arlindo"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
