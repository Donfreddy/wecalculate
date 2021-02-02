import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:wecalculate/src/display.dart';
import 'package:wecalculate/src/key_controller.dart';
import 'package:wecalculate/src/key_pad.dart';
import 'package:wecalculate/src/processor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// =================================================
  ///               VARIABLES
  /// =================================================

  String _output;

  void initState() {
    KeyController.listen((event) => Processor.process(event));
    Processor.listen((data) => setState(() {
          _output = data;
        }));
    Processor.refresh();
    super.initState();
  }

  @override
  void dispose() {
    KeyController.dispose();
    Processor.dispose();
    super.dispose();
  }

  ///==================================================
  ///               BUILD FUNCTION
  ///==================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFFFF5294),
              Color(0xFFFA617C),
              Color(0xFFFF934A),
            ],
            //stops: [0.4, 0.8],
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Display(
                value: _output,
              ),
            ),
            Container(
              //color: Colors.black,
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_buildHistoryBtn(), _buildBackBtn()],
              ),
            ),
            KeyPad()
          ],
        ),
      ),
    );
  }

  /// =================================================
  ///               METHODS
  /// =================================================

  Widget _buildHistoryBtn() {
    return FlatButton(
      child: Text(
        "History",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFFECE1E7)),
      ),
      splashColor: Colors.white.withOpacity(0.2),
      hoverColor: Colors.transparent,
      highlightColor: Colors.white.withOpacity(0.1),
      focusColor: Colors.transparent,
      height: 40,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20)),
      onPressed: () {
        HapticFeedback.vibrate();
        print("History button pressed");
      },
    );
  }

  Widget _buildBackBtn() {
    return FlatButton(
      child: Icon(
        Icons.backspace_outlined,
        color: Colors.white,
      ),
      splashColor: Colors.white.withOpacity(0.2),
      hoverColor: Colors.transparent,
      highlightColor: Colors.white.withOpacity(0.1),
      focusColor: Colors.transparent,
      height: 40,
      onPressed: () {
        HapticFeedback.vibrate();
        print("Back button pressed");
      },
    );
  }
}
