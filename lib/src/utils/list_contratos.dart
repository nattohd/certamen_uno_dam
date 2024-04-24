import 'package:certamen_uno_dam/src/contratos/models/contratos_model.dart';

List<ContratoModel> poblarListaContratos() {
  return [
    ContratoModel(
      estado: "En proceso",
      monto: 10000,
      tipo: "Abierto",
      personaObjetivo: "John Wick",
    ),
    ContratoModel(
      estado: "Finalizado",
      monto: 20000,
      tipo: "Cerrado",
      personaObjetivo: "Santino D'Antonio",
    ),
    ContratoModel(
      estado: "Pendiente",
      monto: 15000,
      tipo: "Abierto",
      personaObjetivo: "Cassian",
    ),
    ContratoModel(
      estado: "En proceso",
      monto: 30000,
      tipo: "Cerrado",
      personaObjetivo: "The Bowery King",
    ),
    ContratoModel(
      estado: "Finalizado",
      monto: 20000,
      tipo: "Cerrado",
      personaObjetivo: "Santino D'Antonio",
    ),
    ContratoModel(
      estado: "Pendiente",
      monto: 15000,
      tipo: "Abierto",
      personaObjetivo: "Cassian",
    ),
    ContratoModel(
      estado: "Pendiente",
      monto: 15000,
      tipo: "Abierto",
      personaObjetivo: "Cassian",
    ),
  ];
}
