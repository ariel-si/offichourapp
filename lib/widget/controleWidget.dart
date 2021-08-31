import 'package:flutter/material.dart';

class ControleWidget extends StatefulWidget {
  @override
  _ControleWidgetState createState() => _ControleWidgetState();
}

class _ControleWidgetState extends State<ControleWidget> {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                  "Ponto Registrado: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Text("09:00"),
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
                Text("01:09:00"),
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
                Text("Rua Maria Curupaiti, 441"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
