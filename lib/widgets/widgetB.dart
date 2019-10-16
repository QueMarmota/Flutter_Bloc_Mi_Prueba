import 'package:flutter/material.dart';
import '../bloc/bloc.dart';

class WidgetB extends StatelessWidget {
  final Function add;

  WidgetB({this.add});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => this.add(10),
      child: Text('Agregar'),
    );
  }
}
