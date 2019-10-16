import 'dart:convert';
import 'dart:async';

class MiBloc {
  final StreamController<int> _streamController =
      StreamController<int>.broadcast();

  int acum = 0;

  //Que clase de informacion entrara al sink?
  Sink<int> get inputSink => _streamController.sink;

  //¿Que clase de informacion saldra ?
  Stream<int> get outputStream => _streamController.stream;

  void add(int num) {
    acum = acum + num;
    //entra al sink para salir por el stream que se encuentra en el main dentro del stream.builder
    inputSink.add(acum);
  }

  void less(int num) {
    acum = acum - num;
    //entra al sink para salir por el stream que se encuentra en el main dentro del stream.builder
    inputSink.add(acum);
  }
}
