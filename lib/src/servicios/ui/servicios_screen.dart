import 'package:certamen_uno_dam/src/asesinos/ui/widgets/side_menu.dart';
import 'package:certamen_uno_dam/src/servicios/models/servicios_model.dart';
import 'package:certamen_uno_dam/src/utils/list_servicios.dart';
import 'package:flutter/material.dart';

class ServiciosScreen extends StatefulWidget {
  const ServiciosScreen({Key? key}) : super(key: key);

  @override
  State<ServiciosScreen> createState() => _ServiciosScreenState();
}

class _ServiciosScreenState extends State<ServiciosScreen> {
  List<ServicioModel> servicios = poblarListaServicios();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios'),
      ),
      drawer: SideMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(16),
            child: Text(
              'Toca el servicio para obtener más información',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: servicios.length,
              itemBuilder: (context, index) {
                return ServicioCard(servicio: servicios[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ServicioCard extends StatelessWidget {
  final ServicioModel servicio;

  const ServicioCard({Key? key, required this.servicio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
            title: Row(
              children: [
                Icon(Icons.room_service),
                Text(
                  " ${servicio.nombre}: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            subtitle: Text(
              servicio.tipo,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(servicio.nombre),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Encargado: ${servicio.encargado}"),
                        Text("Lugar: ${servicio.lugar}"),
                        Text("Horario: ${servicio.horario}"),
                        Text("Tipo: ${servicio.tipo}"),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cerrar'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).maybePop();
                        },
                        child: Text('Contratar Servicio'),
                      ),
                    ],
                  );
                },
              );
            }),
      ),
    );
  }
}
