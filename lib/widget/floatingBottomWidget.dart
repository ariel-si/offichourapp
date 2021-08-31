import 'package:flutter/material.dart';

class FloatingBottomWidget extends StatefulWidget {
  @override
  _FloatingBottomWidgetState createState() => _FloatingBottomWidgetState();
}

class _FloatingBottomWidgetState extends State<FloatingBottomWidget> {
  IconData icone = Icons.play_arrow_rounded;
  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Colors.grey[900],
      child: Icon(icone),
      onPressed: () {
        setState(() {
          if(icone == Icons.play_arrow_rounded){
            icone = Icons.stop;
          }else{
            icone = Icons.play_arrow_rounded;
          }
        });
      },
    );
  }
}
