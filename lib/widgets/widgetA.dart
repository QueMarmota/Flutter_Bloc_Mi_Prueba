import 'dart:async';
import 'dart:math';

import 'package:bloc_mi_prueba/bloc/bloc.dart';
import 'package:bloc_mi_prueba/bloc/inheritWidget_provider.dart';
import 'package:flutter/material.dart';

class WidgetA extends StatelessWidget {
  // final Function less;
  // WidgetA(this.less);

  //codigo para singleton mio
  // final miBloc = new MiBloc();

  @override
  Widget build(BuildContext context) {
    //codigo para singleton inheritwidget
    final miBloc = Provider.of(context);
    return RaisedButton(
      onPressed: () => miBloc.less(10),
      child: Text('Quitar'),
    );
  }
}
