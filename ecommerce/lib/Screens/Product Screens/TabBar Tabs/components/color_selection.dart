import 'package:flutter/material.dart';

class ColorSelection extends StatefulWidget {

  final Color color;
   ColorSelection({
    Key? key, 
    required this.color,
  }) : super(key: key);

  @override
  State<ColorSelection> createState() => _ColorSelectionState();
}

class _ColorSelectionState extends State<ColorSelection> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: 
        (click == false) ? widget.color : Colors.transparent
        ,width: 3),
      ),
      child: Container(
        margin: EdgeInsets.all(3),
        child: FlatButton(onPressed: (){
          setState(() {
            click = !click;
          });
        }, child: CircleAvatar(
          backgroundColor: (click == false) ? widget.color : widget.color,
          radius: 20,
        ), )
      ),
    );
  }
}

