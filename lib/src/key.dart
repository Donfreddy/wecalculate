import 'package:wecalculate/src/key_symbol.dart';

abstract class Keys {
  static KeySymbol clear = const KeySymbol('C');
  static KeySymbol sign = const KeySymbol('±');
  static KeySymbol percent = const KeySymbol('%');
  static KeySymbol divide = const KeySymbol('÷');
  static KeySymbol multiply = const KeySymbol('x');
  static KeySymbol subtract = const KeySymbol('-');
  static KeySymbol add = const KeySymbol('+');
  static KeySymbol equals = const KeySymbol('=');
  static KeySymbol decimal = const KeySymbol('.');

  static KeySymbol zero = const KeySymbol('0');
  static KeySymbol one = const KeySymbol('1');
  static KeySymbol two = const KeySymbol('2');
  static KeySymbol three = const KeySymbol('3');
  static KeySymbol four = const KeySymbol('4');
  static KeySymbol five = const KeySymbol('5');
  static KeySymbol six = const KeySymbol('6');
  static KeySymbol seven = const KeySymbol('7');
  static KeySymbol eight = const KeySymbol('8');
  static KeySymbol nine = const KeySymbol('9');

  static KeySymbol sin = const KeySymbol('sin');
  static KeySymbol cos = const KeySymbol('cos');
  static KeySymbol tg = const KeySymbol('tan');
  static KeySymbol i = const KeySymbol('i');
  static KeySymbol ln = const KeySymbol('ln');
  static KeySymbol lnt = const KeySymbol('lnt');
  static KeySymbol expo2 = const KeySymbol('^2');
  static KeySymbol expo3 = const KeySymbol('^3');
  static KeySymbol log = const KeySymbol('log');
  static KeySymbol dms = const KeySymbol('dms');
  static KeySymbol mod = const KeySymbol('Mod');
  static KeySymbol expoX = const KeySymbol('^x');
  static KeySymbol pi = const KeySymbol('π');
  static KeySymbol expo = const KeySymbol('e');
  static KeySymbol excl = const KeySymbol('!');
  static KeySymbol racine = const KeySymbol('√');
  static KeySymbol openP = const KeySymbol('(');
  static KeySymbol closeP = const KeySymbol(')');
  static KeySymbol exp = const KeySymbol('Exp');
  static KeySymbol fe = const KeySymbol('F-E');
}
