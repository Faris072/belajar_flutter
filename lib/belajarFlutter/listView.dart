import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ListViewKu());
}

class ListViewKu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"ListView",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
          ),
        ),
        body: ListViewSeparated(),
      )
    );
  }
}

class ListViewBiasa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.white,
        )
      ],
    );
  }
}

class ListViewBuilder extends StatelessWidget{//perbedaan dari yang biasa adalah disini bisa dikatakan kita dapat mengambil data dari list sehingga tidak mengulang ulang membuat widget
  List<Color> ListWarna = [Colors.blue,Colors.white,Colors.red];
  List<Widget> ListWidget = [
    Container(
      child: ClipRRect(
        child: Image.asset('assets/images/pens.jpg'),
      ),
      width: 200,
      height: 200,
    ),
    Container(
      child: ClipRRect(
        child: Image.asset('assets/images/pens.jpg'),
      ),
      width: 200,
      height: 200,
    )
  ];
  List<String> ListGambar = [
    'assets/images/pens.jpg',
    'assets/images/pens.jpg',
    'assets/images/pens.jpg',
    'assets/images/pens.jpg',
    'assets/images/pens.jpg'
  ];
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // itemCount: ListWarna.length,
        itemCount: ListGambar.length,
        itemBuilder: (context, index){
          // return Container(
          //   width: 100,
          //   height: 100,
          //   color: ListWarna[index],//akan terluping sesuai indexnya berdasarkan itemCount
          // );
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                ListGambar[index],
                width: 200,
                fit: BoxFit.cover
              ),
            ),
          );
          // return ListWidget[index];
        },
      ),
    );
  }
}

class ListViewSeparated extends StatelessWidget{//hampir sama dengan builder tapi di sini jarak antar widget listView dipisahkan oleh widgetSeparated (separatorBuilder)
  List<Color> ListWarna = [Colors.red,Colors.blue,Colors.green];
  @override
  Widget build(BuildContext context){
    return Container(
      child: ListView.separated(
        itemCount: ListWarna.length,
        itemBuilder: (context, index){
          return Container(
            height: 200,
            color: ListWarna[index],
          );
        },
        separatorBuilder: (context, index){
          return Container(
            color: Colors.amber,
            child: Text("Ini adalah separated"),
          );
        },
      ),
    );
  }
}