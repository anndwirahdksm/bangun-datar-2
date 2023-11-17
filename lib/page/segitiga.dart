import 'package:flutter/material.dart';
import 'package:tugasbangundatar/controller/segitiga_controller.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});

  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Segitiga Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: [
          Image.asset("assets/segitiga.jpg", height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Segitiga",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut. Kemudian untuk alas dari segitiga adalah satu dari sisi suatu bangun segitiga. Lalu untuk tingginya adalah garis yang berbentuk tegak lurus dengan sisi alas dan melewati titik sudut yang saling berhadapan dengan sisi alas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      _segitigaController.alas = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Alas",
                        hintText: "Masukkan Tinggi",
                        hintStyle: TextStyle(color: Colors.blue),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.blue),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      _segitigaController.tinggi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Tinggi",
                        hintText: "Masukkan Tinggi",
                        hintStyle: TextStyle(color: Colors.blue),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.blue),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: TextFormField(
                            onChanged: (value) {
                              _segitigaController.a = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Sisi A",
                                hintText: "Masukkan Sisi A",
                                hintStyle: TextStyle(color: Colors.blue),
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.blue),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: TextFormField(
                            onChanged: (value) {
                              _segitigaController.b = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Sisi B",
                                hintText: "Masukkan Sisi B",
                                hintStyle: TextStyle(color: Colors.blue),
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.blue),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: TextFormField(
                            onChanged: (value) {
                              _segitigaController.c = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Sisi C",
                                hintText: "Masukkan Sisi C",
                                hintStyle: TextStyle(color: Colors.blue),
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.blue),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          _segitigaController.hitungluas();
                        },
                        child: Text(
                          "Hitung Luas",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          _segitigaController.hitungkeliling();
                        },
                        child: Text(
                          "Hitung Keliling",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            height:180 ,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              children: [
                Center(child: Text("Hasil")),
                Center(child: Text("")),
                Center(child: Text("")),
                Obx(() => Text(
                  _segitigaController.hasil.value,
                  style: TextStyle(color: _segitigaController.color.value),
                )),
                Center(child: Text("")),
                Center(child: Text("")),
                Center(child: Text("===================")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}