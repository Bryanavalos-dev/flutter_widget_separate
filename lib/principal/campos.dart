import 'package:flutter/material.dart';
import 'package:flutter_widget_separete/paginas/pagina.dart';
import 'package:flutter_widget_separete/principal/principal.dart';

// Crea un controlador de texto. Lo usaremos para recuperar el valor actual
// del TextField!
final user = TextEditingController();
final password = TextEditingController();
Widget camposUsuarios() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      controller: user,
      decoration: InputDecoration(
          hintText: "Usuario", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget campoPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      controller: password,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Contraseña", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget nombre() {
  return Text(
    "Iniciar",
    style: TextStyle(
        color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
  );
}

Widget botonAceptar(context) {
  return ElevatedButton(
      onPressed: () => {validateUser(context)}, child: Text("Iniciar sesión"));
}

Widget botonCancelar(context) {
  return FlatButton(
      color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Principal()))
          },
      child: Text("Cancelar"));
}

validateUser(context) {
  if (user.text == 'hola' && password.text == '123456789') {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Pagina()));
  } else {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // Recupera el texto que el usuario ha digitado utilizando nuestro
          // TextEditingController
          content: Text("Usuario y/o contraseña incorrecta"),
        );
      },
    );
  }
}
