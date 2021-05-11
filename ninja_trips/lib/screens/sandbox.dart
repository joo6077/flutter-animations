import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        duration: Duration(milliseconds: 900),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('animate margin'),
              onPressed: () {
                setState(() {
                  _margin = 50;
                });
              },
            ),
            ElevatedButton(
              child: Text('animate color'),
              onPressed: () {
                setState(() {
                  _color = Colors.purple;
                });
              },
            ),
            ElevatedButton(
              child: Text('animate width'),
              onPressed: () {
                setState(() {
                  _width = 400;
                });
              },
            ),
            ElevatedButton(
              child: Text('animate opacity'),
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text(
                'hide me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}