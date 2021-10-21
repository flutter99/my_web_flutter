import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:prectice/constants/colors.dart';
import 'package:prectice/widgets/hover_text.dart';
import 'package:prectice/widgets/image_widget.dart';
import 'package:prectice/widgets/responsive_widgte.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController mycontroller = ScrollController();

  @override
  Widget build(BuildContext context) {

    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context) ? AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text("My Web Prectice",
        style: TextStyle(fontSize: 18.0, color: whiteColor.withOpacity(0.7),
          ),
        ),
      ) : PreferredSize(
        preferredSize: Size(screensize.width, 1000),
        child: SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("My Web Prectice", style: TextStyle(fontSize: 20.0, color: whiteColor),),

                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HoverText("Discover", 0),
                        SizedBox(width: screensize.width * 0.03),
                        HoverText("Contact Us", 1),
                      ],
                    ),
                ),

                HoverText("Login", 2),
                SizedBox(width: screensize.width * 0.03),
                HoverText("Sign Up", 3),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: mycontroller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: screensize.height * 0.45,
                  width: screensize.width,
                  child: Image.asset(
                    'assets/images/img.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  heightFactor: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: screensize.height * 0.40,
                      left: screensize.width / 5,
                      right: screensize.width / 5,
                    ),
                    child: Card( // floating quick access bar
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Hello", style: TextStyle(fontSize: 16.0, color: blackColor.withOpacity(0.6),),),
                            Text("World", style: TextStyle(fontSize: 16.0, color: blackColor.withOpacity(0.6),),),
                            Text("Whats", style: TextStyle(fontSize: 16.0, color: blackColor.withOpacity(0.6),),),
                            Text("Doing", style: TextStyle(fontSize: 16.0, color: blackColor.withOpacity(0.6),),),
                           // Text("Result", style: TextStyle(fontSize: 16.0, color: blackColor.withOpacity(0.6),),),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: screensize.height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Features", style: TextStyle(fontSize: 32.0, color: blackColor),),
                  Text("How are you doing", style: TextStyle(fontSize: 16.0, color: blackColor),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 30.0),
              child: ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isMediumScreen(context) ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageBox("assets/images/img.jpg"),
                  const SizedBox(height: 12.0),
                  ImageBox("assets/images/img.jpg"),
                  const SizedBox(height: 12.0),
                  ImageBox("assets/images/img.jpg"),
                ],
              ) : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageBox("assets/images/img.jpg"),
                  ImageBox("assets/images/img.jpg"),
                  ImageBox("assets/images/img.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
