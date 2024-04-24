import 'package:certamen_uno_dam/config/theme/app_theme.dart';
import 'package:certamen_uno_dam/src/asesinos/model/asesinos_model.dart';
import 'package:certamen_uno_dam/src/asesinos/ui/widgets/side_menu.dart';
import 'package:certamen_uno_dam/src/utils/list_asesinos.dart';
import 'package:certamen_uno_dam/src/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AsesinoProfile extends StatefulWidget {
  const AsesinoProfile({super.key});

  @override
  State<AsesinoProfile> createState() => _AsesinoProfileState();
}

class _AsesinoProfileState extends State<AsesinoProfile> {
  // Lista de asesinos inicialmente vacía

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AsesinoModel asesino = listaAsesinos[0];
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi perfil'),
      ),
      drawer: SideMenu(),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.edit), onPressed: () {}),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            ContainerSuperior(size: size, asesino: asesino),
            ContainerInferior(size: size, asesino: asesino)
          ],
        ),
      ),
    );
  }
}

class ContainerInferior extends StatelessWidget {
  const ContainerInferior({
    super.key,
    required this.size,
    required this.asesino,
  });

  final Size size;
  final AsesinoModel asesino;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.517,
      color: Colors.white,
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Ocupacion : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(asesino.ocupacion)
            ],
          ),
          Row(
            children: [
              Text(
                'Cantidad de asesinatos : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(asesino.cantAsesinatos.toString())
            ],
          ),
          Divider(
            height: 40,
          ),
          Row(
            children: [
              Text(
                'Genero: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(asesino.genero.capitalize())
            ],
          ),
          Row(
            children: [
              Text(
                'Edad: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(asesino.edad.toString())
            ],
          ),
          Row(
            children: [
              Text(
                'Nacionalidad: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(asesino.nacionalidad[0])
            ],
          ),
          Divider(),
          const Row(
            children: [
              Text(
                'Apodos: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: double.infinity,
            child: ListView.builder(
                itemCount: asesino.alias.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("-"),
                    title: Text(asesino.alias[index]),
                  );
                }),
          ))
        ],
      ),
    );
  }
}

class ContainerSuperior extends StatelessWidget {
  const ContainerSuperior({
    super.key,
    required this.size,
    required this.asesino,
  });

  final Size size;
  final AsesinoModel asesino;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      width: double.infinity,
      color: Color.fromARGB(255, 108, 4, 139),
      child: Column(
        children: [
          Spacer(),
          Center(
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.white, width: 3.0), // Borde blanco
                  ),
                  height: 200,
                  width: 200,
                  child: ClipOval(
                    // child: Image.network(fit: BoxFit.fill, asesino.imgUrl,
                    //     loadingBuilder: (BuildContext context, Widget child,
                    //         ImageChunkEvent? loadingProgress) {
                    //   if (loadingProgress == null) return child;
                    //   return Center(
                    //     child: CircularProgressIndicator(
                    //       value: loadingProgress.expectedTotalBytes != null
                    //           ? loadingProgress.cumulativeBytesLoaded /
                    //               loadingProgress.expectedTotalBytes!
                    //           : null,
                    //     ),
                    //   );
                    // }),
                    child: Image.asset(
                      'assets/john.jpg',
                      fit: BoxFit.fill,
                    ),
                  ))),
          Text(
            listaAsesinos[0].nombre,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            asesino.residencia,
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
