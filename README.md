# Bloc_mi_prueba

#### Comunicar dos widgets a traves del patron de diseño BLoc

* Crear un archivo bloc.dart

* *Definir de que tipo sera nuestro stream*

final StreamController<int> _streamController =
StreamController<int>.broadcast(); 

* *¿Que clase de informacion entrara al sink?*

Sink<int> get inputSink => _streamController.sink; 

* *¿Que clase de informacion saldra ?*

Stream<int> get outputStream => _streamController.stream; 

* *Crear el metodo que ejecutara una accion que debera escuchar cierto widget :*

 void add(int num) {

    acum = acum + num;
    *Entra al sink para salir por el stream que se encuentra en el main dentro del stream.builder*
    *inputSink.add(acum);*
    }

* Pasar el apuntador de esa funcion al widget que la ejecutara :

*WidgetA(stream.add), //Si no ponemos () en la funcion .add estamos pasando la referencia osea el apuntador*

* Agregar el Stream o Stream. Builder Encargado de escuchar los cambios de la variable :
*//outPutStream es el encargo de escuchar los cambios*
*y se refleja en snapshot.data*
StreamBuilder(
stream: stream.outputStream,
builder: (BuildContext context, AsyncSnapshot snapshot) {
if (snapshot.hasData) {
print(snapshot.data);
return Container(
child: Text(snapshot.data.toString()),
);
} else {
print(snapshot.data);
return CircularProgressIndicator();
}
},
),
