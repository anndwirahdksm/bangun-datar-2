import 'package:flutter/material.dart';
import 'package:tugasbangundatar/page/persegi.dart';
import 'package:tugasbangundatar/page/lingkaran.dart';
import 'package:tugasbangundatar/page/persegipanjang.dart';
import 'package:tugasbangundatar/page/segitiga.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFFFF0000),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                  },
                  child:CustomMenu(imageAsset: "assets/Persegi.jpg",title: "Persegi"))),

              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjangPage()));
                  },
                  child:CustomMenu(imageAsset: "assets/Persegi_Panjang.jpg",title: "Persegi_Panjang"))),
            ],
          ),
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
                  },
                  child:CustomMenu(imageAsset: "assets/Segitiga.jpg",title: "Segitiga"))),

              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
                  },
                  child:CustomMenu(imageAsset: "assets/Lingkaran.jpg",title: "Lingkaran"))),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        color: Color(0xFFFF0000),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

        child: Column(
          children:[
            Image.asset(imageAsset, height: 100),
            Text(title, style: TextStyle(color: Colors.black),)
          ],
        ));
  }
}