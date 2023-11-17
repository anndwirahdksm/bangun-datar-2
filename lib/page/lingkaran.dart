import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasbangundatar/controller/lingkaran_controller.dart';


class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});
  final LingkaranController _lingkaranController= Get.put(LingkaranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lingkaran Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/Lingkaran.jpg", height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lingkaram",
              style: TextStyle(color: Colors.black),
            ),
          ),

          Container(
            decoration: BoxDecoration(
                color: Colors.red.shade800,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi adalah bangun datar dua dimensi yang memiliki bentuk pada keempat rusuk yang sisinya sama panjang dan memiliki empat sudut siku-siku sebesar 90 derajat"),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.red.shade800,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red.shade800,borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: .0),
                    child: TextFormField(
                      onChanged: (value){
                        _lingkaranController.jari = double.parse(value);
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Hitung",
                          hintText: "Masukkan Jari Jari",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: ElevatedButton(onPressed: (){
                        _lingkaranController.hitungLuas();
                      },
                        child: Text("hitung Luas"),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.red),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: ElevatedButton(onPressed: (){
                        _lingkaranController.hitungKeliling();
                      },
                        child: Text("hitung Keliling"),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.yellow),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
                color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => Text(_lingkaranController.hasil.value, style: TextStyle(color: _lingkaranController.textColor.value),)),

          ),
        ],
      ),
    );
  }
}