import 'package:certamen_uno_dam/src/servicios/models/servicios_model.dart';
import 'package:flutter/material.dart';

List<ServicioModel> poblarListaServicios() {
  return [
    ServicioModel(
      nombre: "Sommelier",
      encargado: "The Sommelier",
      lugar: "Desconocido",
      horario: "24/7",
      tipo: "Proporciona armas y munición",
    ),
    ServicioModel(
      nombre: "Doctor",
      encargado: "The Doctor",
      lugar: "Desconocido",
      horario: "24/7",
      tipo: "Servicio médico de urgencia",
    ),
    ServicioModel(
      nombre: "Sastre",
      encargado: "The Tailor",
      lugar: "Desconocido",
      horario: "Horario comercial",
      tipo: "Proporciona trajes con resistencia a balas",
    ),
    ServicioModel(
      nombre: "Limpiadores",
      encargado: "The Cleaners",
      lugar: "Desconocido",
      horario: "24/7",
      tipo:
          "Encargados del aseo de lugares en que hubo asesinatos y de 'gestionar' los cadáveres",
    ),
  ];
}
