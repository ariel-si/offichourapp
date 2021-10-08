import 'package:flutter/material.dart';

class TelaSolicitarAjuste extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solicitar Ajuste"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Informe data e hora do ponto em atraso.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text("Os ponto ficara pendente ate seu gestor aprovar."),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("data:"),
                      Text("Hora:"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
