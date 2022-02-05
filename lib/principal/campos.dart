import 'package:flutter/material.dart';

Widget camposUsuarios() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Usuario", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget campoPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
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

Widget botonAceptar() {
  return ElevatedButton(onPressed: () => {}, child: Text("Iniciar sesión"));
}

Widget botonCancelar() {
  return FlatButton(
      color: Colors.red,
      padding: EdgeInsets.symmetric(),
      onPressed: () => {},
      child: Text("Cancelar"));
}
