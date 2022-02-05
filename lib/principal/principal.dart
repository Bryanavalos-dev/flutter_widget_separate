import 'package:flutter/material.dart';
import 'package:flutter_widget_separete/paginas/pagina.dart';
import 'package:flutter_widget_separete/principal/useWid.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: RaisedButton(
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UseWid()))
        },
        child: Text("Logarse"),
      ),
    );
  }
}
