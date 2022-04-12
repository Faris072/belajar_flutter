import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
      title: "Flutter gird",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
          ),
          title: Text("Gird Flutter"),
        ),
        body:GridBuilder(),
      ),
    )
  );
}

class GridBuilder extends StatelessWidget{
  List<Color> ListWarna = [Colors.red, Colors.amber, Colors.lightGreenAccent, Colors.blue, Colors.purple];
  @override
  Widget build(BuildContext context){
    return Container(
      width: 200,
      child: GridView.builder(
        itemCount: ListWarna.length,
        // scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //untuk mendeklarasikan banyaknya kotak dalam 1 baris atau kolom
          crossAxisSpacing: 5, //jarak antar elemen gird secara crossAxis
          mainAxisSpacing: 5, //jarak antar elemen grid secara mainAxis
        ),//harus ada.
        itemBuilder: (context, index){
          return Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: ListWarna[index],//kalau ada decoration, colornya harus di dalam decoration tidak usah di luar decoration
            ),
          );
        },
      ),
    );
  }
}

class GridCount extends StatelessWidget{//sama seperti listView biasa
  @override
  Widget build(BuildContext context){
    return Container(
      child: GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 5,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class ContainerKu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: 100,
      height: 100,
      // color: Colors.red,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,//kalau sudah ada decoration, color di luar decoration tidak usah ada
      ),
    );
  }
}

