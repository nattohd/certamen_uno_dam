import 'package:certamen_uno_dam/src/asesinos/model/asesinos_model.dart';
import 'package:certamen_uno_dam/src/asesinos/ui/widgets/side_menu.dart';
import 'package:certamen_uno_dam/src/utils/list_asesinos.dart';
import 'package:flutter/material.dart';

class AsesinosScreen extends StatefulWidget {
  const AsesinosScreen({super.key});

  @override
  State<AsesinosScreen> createState() => _AsesinosScreenState();
}

int currentIndex = 0;

class _AsesinosScreenState extends State<AsesinosScreen> {
  List<AsesinoModel> asesinos = listaAsesinos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asesinos'),
      ),
      drawer: SideMenu(),
      body: Center(
        child: SizedBox(
          child: Card(
            elevation: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.white, width: 3.0), // Borde blanco
                        ),
                        height: 600,
                        width: 600,
                        child: ClipOval(
                          child: Image.network(
                              fit: BoxFit.fill, asesinos[currentIndex].imgUrl,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          }),
                        ))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        asesinos[currentIndex].nombre,
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        asesinos[currentIndex].ocupacion,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal:
                                  32), // Ajusta el padding según sea necesario
                          elevation: 12),
                      onPressed: () {
                        setState(() {
                          if (currentIndex > 0) {
                            currentIndex--;
                          }
                        });
                      },
                      child: Text('Back'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal:
                                  32), // Ajusta el padding según sea necesario
                          elevation: 12),
                      onPressed: () {
                        setState(() {
                          if (currentIndex < asesinos.length - 1) {
                            currentIndex++;
                          }
                        });
                      },
                      child: Text('Next'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
