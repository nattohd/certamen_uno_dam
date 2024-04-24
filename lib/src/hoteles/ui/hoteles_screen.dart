import 'package:certamen_uno_dam/src/asesinos/ui/widgets/side_menu.dart';
import 'package:certamen_uno_dam/src/hoteles/models/hoteles_model.dart';
import 'package:certamen_uno_dam/src/servicios/models/servicios_model.dart';
import 'package:certamen_uno_dam/src/utils/list_hoteles.dart';
import 'package:certamen_uno_dam/src/utils/list_servicios.dart';
import 'package:flutter/material.dart';

class HotelesScreen extends StatefulWidget {
  const HotelesScreen({super.key});

  @override
  State<HotelesScreen> createState() => _HotelesScreenState();
}

class _HotelesScreenState extends State<HotelesScreen> {
  List<HotelModel> hoteles = cargarHoteles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hoteles'),
        ),
        drawer: SideMenu(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Cambia este valor según sea necesario
            crossAxisSpacing: 10,
            mainAxisSpacing: 25,
          ),
          itemCount: hoteles.length,
          itemBuilder: (context, index) {
            return HotelCard(hotel: hoteles[index]);
          },
        ));
  }
}

class HotelCard extends StatelessWidget {
  final HotelModel hotel;

  const HotelCard({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              hotel.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.black.withOpacity(0.5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.nombre,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        'Manager: ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${hotel.manager}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Ubicación: ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Text(
                          '${hotel.ubicacion}',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
