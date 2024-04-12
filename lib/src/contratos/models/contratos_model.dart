import 'package:flutter/material.dart';

class ContratoModel {
  final String estado;
  final double monto;
  final String tipo;
  final String personaObjetivo;

  ContratoModel({
    required this.estado,
    required this.monto,
    required this.tipo,
    required this.personaObjetivo,
  });
}
