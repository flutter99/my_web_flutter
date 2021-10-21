import 'package:flutter/material.dart';
import 'package:prectice/constants/colors.dart';

class HoverText extends StatefulWidget {
  String text;
  int index;

  HoverText(this.text, this.index);

  @override
  _HoverTextState createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {

  List _ishover = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (value){
        setState(() {
          _ishover[widget.index] = value;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.text, style: TextStyle(fontSize: 14.0,
            color: _ishover[widget.index] ? whiteColor : whiteColor.withOpacity(0.6),
          ),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            visible: _ishover[widget.index],
            child: Container(
              height: 2.0,
              width: 30.0,
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
