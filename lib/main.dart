import 'dart:math';
import 'package:flutter/material.dart';

class BackgroundcolorApplication extends StatefulWidget {
  const BackgroundcolorApplication({Key? key}) : super(key: key);

  @override
  _BackgroundcolorApplicationState createState() =>
      _BackgroundcolorApplicationState();
}

Color backgroundColor = Colors.lightBlueAccent;

class _BackgroundcolorApplicationState
    extends State<BackgroundcolorApplication> {
  final Random random = Random();

  void changeBackgroundColor() {
    setState(() {
      backgroundColor = Color.fromARGB(random.nextInt(256), random.nextInt(256),
          random.nextInt(256), random.nextInt(256));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.android_outlined,
                        color: Colors.black,
                        size: 50,
                      ),
                    ),
                    Text(
                      'Hey there!',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )
                  ]),
            ),
          ],
        ),
        onTap: () {
          changeBackgroundColor();
        },
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MaterialApp(
    home: Scaffold(
      body: BackgroundcolorApplication(),
    ),
  ));
}
