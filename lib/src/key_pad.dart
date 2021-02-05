import 'package:flutter/material.dart';
import 'package:wecalculate/src/calculator_key.dart';
import 'package:wecalculate/src/constant.dart';
import 'package:wecalculate/src/key.dart';

class KeyPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return isPortrait(context)
        ? Column(
            children: [
              Row(children: <Widget>[
                CalculatorKey(symbol: Keys.clear),
                CalculatorKey(symbol: Keys.sign),
                CalculatorKey(symbol: Keys.percent),
                CalculatorKey(symbol: Keys.divide),
              ]),
              Row(children: <Widget>[
                CalculatorKey(symbol: Keys.seven),
                CalculatorKey(symbol: Keys.eight),
                CalculatorKey(symbol: Keys.nine),
                CalculatorKey(symbol: Keys.multiply),
              ]),
              Row(children: <Widget>[
                CalculatorKey(symbol: Keys.four),
                CalculatorKey(symbol: Keys.five),
                CalculatorKey(symbol: Keys.six),
                CalculatorKey(symbol: Keys.subtract),
              ]),
              Row(children: <Widget>[
                CalculatorKey(symbol: Keys.one),
                CalculatorKey(symbol: Keys.two),
                CalculatorKey(symbol: Keys.three),
                CalculatorKey(symbol: Keys.add),
              ]),
              Row(
                children: <Widget>[
                  CalculatorKey(symbol: Keys.zero),
                  CalculatorKey(symbol: Keys.decimal),
                  CalculatorKey(symbol: Keys.equals),
                ],
              )
            ],
          )
        : Column(
            children: [
              Row(children: <Widget>[
                CalculatorKey(symbol: Keys.sin),
                CalculatorKey(symbol: Keys.cos),
                CalculatorKey(symbol: Keys.tg),
                CalculatorKey(symbol: Keys.i),
                CalculatorKey(symbol: Keys.clear),
                CalculatorKey(symbol: Keys.sign),
                CalculatorKey(symbol: Keys.percent),
                CalculatorKey(symbol: Keys.divide),
              ]),
              Row(children: <Widget>[
                CalculatorKey(symbol: Keys.ln),
                CalculatorKey(symbol: Keys.lnt),
                CalculatorKey(symbol: Keys.expo2),
                CalculatorKey(symbol: Keys.expo3),
                CalculatorKey(symbol: Keys.seven),
                CalculatorKey(symbol: Keys.eight),
                CalculatorKey(symbol: Keys.nine),
                CalculatorKey(symbol: Keys.multiply),
              ]),
              Row(children: <Widget>[
                CalculatorKey(symbol: Keys.log),
                CalculatorKey(symbol: Keys.dms),
                CalculatorKey(symbol: Keys.mod),
                CalculatorKey(symbol: Keys.expoX),
                CalculatorKey(symbol: Keys.four),
                CalculatorKey(symbol: Keys.five),
                CalculatorKey(symbol: Keys.six),
                CalculatorKey(symbol: Keys.subtract),
              ]),
              Row(children: <Widget>[
                CalculatorKey(symbol: Keys.pi),
                CalculatorKey(symbol: Keys.expo),
                CalculatorKey(symbol: Keys.excl),
                CalculatorKey(symbol: Keys.racine),
                CalculatorKey(symbol: Keys.one),
                CalculatorKey(symbol: Keys.two),
                CalculatorKey(symbol: Keys.three),
                CalculatorKey(symbol: Keys.add),
              ]),
              Row(
                children: <Widget>[
                  CalculatorKey(symbol: Keys.openP),
                  CalculatorKey(symbol: Keys.closeP),
                  CalculatorKey(symbol: Keys.exp),
                  CalculatorKey(symbol: Keys.fe),
                  CalculatorKey(symbol: Keys.zero),
                  CalculatorKey(symbol: Keys.decimal),
                  CalculatorKey(symbol: Keys.equals),
                ],
              )
            ],
          );
  }
}
