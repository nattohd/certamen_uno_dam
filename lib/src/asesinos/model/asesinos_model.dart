import 'package:flutter/material.dart';

class AsesinoModel {
  String nombre;
  String residencia;
  int edad;
  int cantAsesinatos;
  String imgUrl;
  List<String> alias;
  String genero;
  List<String> nacionalidad;
  String ocupacion;

  AsesinoModel(
      {Key? key,
      required this.nombre,
      required this.residencia,
      required this.edad,
      required this.cantAsesinatos,
      required this.imgUrl,
      required this.alias,
      required this.genero,
      required this.nacionalidad,
      required this.ocupacion});
}
