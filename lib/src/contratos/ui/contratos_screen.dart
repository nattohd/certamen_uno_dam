import 'package:certamen_uno_dam/src/asesinos/ui/widgets/side_menu.dart';
import 'package:certamen_uno_dam/src/contratos/models/contratos_model.dart';
import 'package:certamen_uno_dam/src/utils/list_contratos.dart';
import 'package:flutter/material.dart';

class ContratosScreen extends StatefulWidget {
  const ContratosScreen({Key? key}) : super(key: key);

  @override
  State<ContratosScreen> createState() => _ContratosScreenState();
}

class _ContratosScreenState extends State<ContratosScreen> {
  @override
  Widget build(BuildContext context) {
    List<ContratoModel> contratos = poblarListaContratos();
    return Scaffold(
      appBar: AppBar(
        title: Text('Contratos'),
      ),
      drawer: SideMenu(),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(contratos.length, (index) {
                ContratoModel contrato = contratos[index];
                return InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Spacer(
                          flex: 2,
                        ),
                        Text(
                          contrato.personaObjetivo,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          contrato.monto.toString(),
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Spacer(),
                            Text(
                              contrato.estado,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(contrato.tipo,
                                style: TextStyle(
                                    color: contrato.tipo == "Cerrado"
                                        ? Colors.red
                                        : Colors.green)),
                            Spacer()
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_box),
                        SizedBox(width: 10),
                        Text('Añadir contrato'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
