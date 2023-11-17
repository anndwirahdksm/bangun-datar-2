import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0 ;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan Luas Dari $sisi x $sisi = $hitung";
    textColor.value = Colors.red;
  }

  void hitungKeliling(){
    int hitung = sisi * 4;
    hasil.value = "Hasil Perhitungan Keiling dari $sisi = $hitung";
    textColor.value = Colors.yellow;
  }
}

