import 'package:certamen_uno_dam/src/asesinos/model/asesinos_model.dart';
import 'package:flutter/material.dart';

List<AsesinoModel> listaAsesinos = [
  AsesinoModel(
      nombre: 'Jonathan Wick',
      residencia: 'America',
      edad: 59,
      cantAsesinatos: 439,
      imgUrl:
          'https://static.wikia.nocookie.net/john-wick8561/images/a/a1/John_Wick.webp/revision/latest?cb=20230809124750',
      alias: [
        "John Wick",
        "Baba Yaga (Баба-Яга)",
        "The Boogeyman",
        "The Man you sent to Kill the F*cking Boogeyman",
        "Mr. Wick",
        "The Devil",
        "The Wolf",
        "The Ghost",
        "Lo Spettro",
        "Death's Very Emissary",
        "The Man, The Myth, The Legend",
        "The Prodigal Son",
        "A Wicked Man from the Big Apple",
        "Our Wicked Friend",
        "The Killer"
      ],
      genero: 'masculino',
      nacionalidad: ['Soviet', 'Belarusflag Belarusian', 'USFlag American'],
      ocupacion: 'Professional Assassin'),
  AsesinoModel(
    nombre: 'Caine',
    residencia: 'Unknown',
    edad: 50,
    cantAsesinatos: 300,
    imgUrl: 'https://example.com/caine.jpg',
    alias: ["The Shadow", "Silent Killer", "Ghost Whisperer"],
    genero: 'masculino',
    nacionalidad: ['Unknown'],
    ocupacion: 'Mysterious Assassin',
  ),
  AsesinoModel(
    nombre: 'Koji Shimazu',
    residencia: 'Japan',
    edad: 47,
    cantAsesinatos: 376,
    imgUrl:
        'https://static.wikia.nocookie.net/john-wick8561/images/3/35/Koji_Shimazu.webp/revision/latest?cb=20230809124759',
    alias: ["The Samurai", "Yakuza Slayer", "Katana Master"],
    genero: 'masculino',
    nacionalidad: ['Japanese'],
    ocupacion: 'Yakuza Hitman',
  ),
  AsesinoModel(
    nombre: 'Sofia Al-Azwar',
    residencia: 'Syria',
    edad: 36,
    cantAsesinatos: 215,
    imgUrl:
        'https://static.wikia.nocookie.net/john-wick8561/images/6/64/Sofia_Character_Poster.jpg/revision/latest?cb=20190321185525',
    alias: ["The Desert Rose", "Sand Assassin", "Nomad Killer"],
    genero: 'femenino',
    nacionalidad: ['Syrian'],
    ocupacion: 'Mercenary',
  ),
  AsesinoModel(
    nombre: 'Cassian',
    residencia: 'Italy',
    edad: 42,
    cantAsesinatos: 291,
    imgUrl:
        'https://static.wikia.nocookie.net/john-wick8561/images/f/f5/Cassian-jw2.jpg/revision/latest?cb=20230529041934',
    alias: ["The Italian Stallion", "Silent Blade", "Venetian Phantom"],
    genero: 'masculino',
    nacionalidad: ['Italian'],
    ocupacion: 'Underworld Enforcer',
  )
];
