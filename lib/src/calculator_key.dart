import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wecalculate/src/key.dart';
import 'package:wecalculate/src/key_controller.dart';
import 'package:wecalculate/src/key_symbol.dart';

class CalculatorKey extends StatelessWidget {
  CalculatorKey({this.symbol});

  final KeySymbol symbol;

  bool isOperator() => symbol.type == KeyType.OPERATOR;

  Color get color {
    switch (symbol.type) {
      case KeyType.FUNCTION:
        return Color.fromARGB(255, 96, 96, 96);

      case KeyType.OPERATOR:
        return Colors.white;

      case KeyType.INTEGER:
      default:
        return Color.fromARGB(255, 128, 128, 128);
    }
  }

  static dynamic _fire(CalculatorKey key) => KeyController.fire(KeyEvent(key));

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 5;

    return Container(
      width: (symbol == Keys.zero) ? ((size + size / 4) * 2) : size + size / 4,
      padding: EdgeInsets.all(2),
      height: size,
      color: Colors.transparent,
      child: Material(
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.1),
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.2),
          hoverColor: Colors.transparent,
          highlightColor: Colors.white.withOpacity(0.1),
          focusColor: Colors.transparent,
          child: Center(
            child: Text(
              symbol.value,
              style: Theme.of(context).textTheme.headline4.copyWith(
                    color: isOperator() ? Colors.white : Color(0xFFECE1E7),
                    fontWeight: isOperator() ? FontWeight.bold : null,
                  ),
            ),
          ),
          onTap: () {
            HapticFeedback.vibrate();
            _fire(this);
          },
        ),
      ),
    );
  }
}
