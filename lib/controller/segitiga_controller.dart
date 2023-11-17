import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int tinggi = 0;
  int a = 0;
  int b = 0;
  int c = 0;

  final hasil = "".obs;
  final color = Rx<Color>(Colors.black);

  void hitungluas(){
    double hitung = 1/2 * alas * tinggi;
    hasil.value = "Luas Segitiga adalah $hitung";
    color.value = Colors.black;
  }

  void hitungkeliling(){
    int htg = a + b + c;
    hasil.value = "Keliling Segitiga adalah $htg";
    color.value = Colors.black;
  }
}