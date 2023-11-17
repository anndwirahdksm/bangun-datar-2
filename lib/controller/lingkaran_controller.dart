import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  double jari = 0;
  double phi = 3.14;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = phi * jari * jari;
    hasil.value = "Hasil Perhitungan Luas Dari $hitung";
    textColor.value = Colors.red;
  }

  void hitungKeliling(){
    double hitung = 2 * phi * jari;
    hasil.value = "Hasil Perhitungan Keiling dari $hitung";
    textColor.value = Colors.yellow;
  }
}

