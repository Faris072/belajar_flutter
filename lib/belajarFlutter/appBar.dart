import 'package:flutter/material.dart';

void main(){
  runApp(AppBarDinamis());
}

class AppBarBiasa extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "App Bar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
          ),
          title: Text("App Bar Flutter"),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarDinamis extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "App Bar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Belajar SliverAppBar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/images/pens.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: Center(
            child: Text("Pens"),
          ),
        ),
      )
    );
  }
}