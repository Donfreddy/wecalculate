import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Display extends StatelessWidget {
  final String value;

  const Display({Key key, this.value}) : super(key: key);

  String get _output => value.toString();

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height * 0.1;

    return Container(
      padding: EdgeInsets.fromLTRB(32, size, 32, 0),
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.centerRight,
        child: AutoSizeText(
          _output,
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(color: Colors.white),
          maxLines: 1,
        ),
      ),
    );
  }
}

// AutoSizeText(
// _output,
// style: Theme.of(context)
// .textTheme
//     .headline4
//     .copyWith(color: Colors.white),
// maxLines: 1,
// ),
