import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        title: "image",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Gambar(),
      )
  );
}

class Gambar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: (){},
      //     icon: Icon(Icons.menu),
      //   ),
      //   title: Text("Image Flutter"),
      // ),
      body: SafeArea(//supaya tidak menabrak keatas notifikasi bar
        child: SingleChildScrollView(//biar halaman bisa di scroll
          scrollDirection: Axis.vertical,//biar halaman bisa di scroll vertical
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/pens.jpg',
                  // width: 320,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.account_box,color: Colors.blue),
                          Text("Account"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.phone, color: Colors.green),
                          Text("Phone"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.add_a_photo, color: Colors.black),
                          Text("Photo"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Politeknik Elektronika Negeri Surabaya ( PENS )",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Hallo! Lorem ipsum dolor Nama Saya Muhammad Faris Shafawn Kelas D3PJJTI-A Saya adalah calon orang sukses dan saya yakin itu karena saya yakin bahwa Allah dapat membuat bahagia setiap makhluknya. Oke sekarang kita langsung ke pembahasannya",
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 125,
                child: ListView(
                  // addSemanticIndexes: ,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      child: ClipRRect(//supaya bisa di border radius
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                        "assets/images/pens.jpg",
                        width: 100,
                        fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      child: ClipRRect(//supaya bisa di border radius
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/pens.jpg",
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      child: ClipRRect(//supaya bisa di border radius
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/pens.jpg",
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      child: ClipRRect(//supaya bisa di border radius
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/pens.jpg",
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(//supaya bisa di border radius
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/pens.jpg",
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}