import 'package:flutter/material.dart';

class ServicioModel {
  final String nombre;
  final String encargado;
  final String lugar;
  final String horario;
  final String tipo;

  ServicioModel({
    required this.nombre,
    required this.encargado,
    required this.lugar,
    required this.horario,
    required this.tipo,
  });
}
