import 'dart:async';
import 'dart:math';

import 'package:bloc_mi_prueba/bloc/bloc.dart';
import 'package:flutter/material.dart';

class WidgetA extends StatelessWidget {
  final Function less;
  WidgetA(this.less);


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () =>this.less(10),
      child: Text('Quitar'),
    );
  }
}
