import 'package:flutter/material.dart';
import '../bloc/bloc.dart';

class WidgetB extends StatelessWidget {
  //funciones para cuando no hay un  singleton
  //se le pasa por el contructor la referencia a la funcion que va ejecutar
  // final Function add;
  // WidgetB({this.add});

  //codigo para el singleton, en la clase miBloc ya esta implentando el singleton
    final miBloc = new MiBloc();
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => miBloc.add(10),
      child: Text('Agregar'),
    );
  }
}
