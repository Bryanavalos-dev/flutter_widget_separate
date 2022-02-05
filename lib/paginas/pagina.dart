import 'package:flutter/material.dart';

class Pagina extends StatelessWidget {
  const Pagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 1"),
      ),
      body: Column(
        children: [
          Text("Estamos en la pagina uno",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fringilla bibendum arcu id bibendum. Pellentesque urna diam, semper at turpis nec, vehicula ullamcorper nunc. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla metus magna, fermentum id nisi at, tempor sagittis diam. Sed nec sollicitudin tortor. Cras turpis est, pharetra non nibh nec, rhoncus tempus lacus. Sed a sodales velit. Integer maximus finibus risus, quis ultricies lorem finibus in. Proin id mauris quis est sagittis pretium.")
        ],
      ),
    );
  }
}
