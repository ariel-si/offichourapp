import 'package:flutter/material.dart';
import 'package:offichour_app/components/botton_app_bar.dart';
import 'package:offichour_app/components/drawer_itens.dart';
import 'package:offichour_app/components/float_button_start_stop.dart';
import 'package:offichour_app/components/mapa_google.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Offichour",
        ),
      ),
      drawer: DrawerItens(),
      body: MapaGoogle(),
      floatingActionButton: FloatButtonStartStop(),
      bottomNavigationBar: BottonAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}