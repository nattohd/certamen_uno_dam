import 'package:certamen_uno_dam/src/hoteles/models/hoteles_model.dart';
import 'package:flutter/material.dart';

List<HotelModel> cargarHoteles() {
  return [
    HotelModel(
        nombre: 'Continental Hotel',
        ubicacion: 'Nueva York, Estados Unidos',
        manager: 'Winston Scott',
        imgUrl: 'assets/hotel1.jpg'),
    HotelModel(
        nombre: 'Palace Hotel',
        ubicacion: 'Roma, Italia',
        manager: 'Julius',
        imgUrl: 'assets/hotel2.jpg'),
    HotelModel(
        nombre: 'Grand Hotel',
        ubicacion: 'París, Francia',
        manager: 'Marie',
        imgUrl: 'assets/hotel3.jpg'),
    HotelModel(
        nombre: 'Osaka Continental',
        ubicacion: 'Osaka, Japon',
        manager: 'Akira Shimazu',
        imgUrl: 'assets/hotel4.jpg'),
    HotelModel(
        nombre: 'Rome Continental',
        ubicacion: 'Rina, Italia',
        manager: 'Lucia',
        imgUrl: 'assets/hotel5.jpg'),
  ];
}
