import 'package:certamen_uno_dam/src/hoteles/models/hoteles_model.dart';
import 'package:flutter/material.dart';

List<HotelModel> cargarHoteles() {
  return [
    HotelModel(
      nombre: 'Continental Hotel',
      ubicacion: 'Nueva York, Estados Unidos',
      manager: 'Winston',
    ),
    HotelModel(
      nombre: 'Palace Hotel',
      ubicacion: 'Roma, Italia',
      manager: 'Giuseppe',
    ),
    HotelModel(
      nombre: 'Grand Hotel',
      ubicacion: 'París, Francia',
      manager: 'Marie',
    ),
  ];
}
