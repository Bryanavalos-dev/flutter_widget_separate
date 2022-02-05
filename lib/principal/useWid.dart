import 'package:flutter/material.dart';
import 'package:flutter_widget_separete/principal/campos.dart';

class UseWid extends StatefulWidget {
  const UseWid({Key? key}) : super(key: key);
  @override
  State<UseWid> createState() => _UseWidState();
}

class _UseWidState extends State<UseWid> {
  // Crea un controlador de texto. Lo usaremos para recuperar el valor actual
  // del TextField!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Widgets"),
      // ),
      body: mensaje(context),
    );
  }
}

//Wifget creado para manejar unicamente la configuracion para el widget o lo que queremos mostrar
Widget mensaje(context) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
              "https://mobimg.b-cdn.net/v3/fetch/11/112b72fb1040e70c2caf0fc775ec57f6.jpeg?h=600&r=0.5",
            ),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        nombre(),
        camposUsuarios(),
        campoPassword(),
        //Sirve para hacer saltos de espacio en las pantallas
        SizedBox(
          height: 10,
        ),
        botonAceptar(context),
        botonCancelar(context)
      ],
    )),
  );
}
