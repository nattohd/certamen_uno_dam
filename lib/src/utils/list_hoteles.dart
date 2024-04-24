import 'package:certamen_uno_dam/src/hoteles/models/hoteles_model.dart';
import 'package:flutter/material.dart';

List<HotelModel> cargarHoteles() {
  return [
    HotelModel(
      nombre: 'Continental Hotel',
      ubicacion: 'Nueva York, Estados Unidos',
      manager: 'Winston Scott',
    ),
    HotelModel(
      nombre: 'Palace Hotel',
      ubicacion: 'Roma, Italia',
      manager: 'Julius',
    ),
    HotelModel(
      nombre: 'Grand Hotel',
      ubicacion: 'París, Francia',
      manager: 'Marie',
    ),
  ];
}
