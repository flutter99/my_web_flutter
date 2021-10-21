import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:prectice/widgets/responsive_widgte.dart';

class ImageBox extends StatefulWidget {
  String imgPath;

  ImageBox(this.imgPath);

  @override
  _ImageBoxState createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> {
  @override
  Widget build(BuildContext context) {

    var screensize = MediaQuery.of(context).size;

    return Bounce(
      onPressed: (){},
      duration: const Duration(milliseconds: 300),
      child: Container(
        height: ResponsiveWidget.isMediumScreen(context) || ResponsiveWidget.isSmallScreen(context) ? screensize.height * 0.7 : screensize.height * 0.5,
        width: ResponsiveWidget.isMediumScreen(context) || ResponsiveWidget.isSmallScreen(context) ? screensize.height * 0.7 : screensize.height * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(widget.imgPath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
