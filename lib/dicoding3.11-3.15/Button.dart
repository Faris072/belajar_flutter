import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(elevatedbutton());
}

class elevatedbutton extends StatelessWidget{
  final List<String> dataList = ['List 1','List 2','List 4'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Button",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          ),
          title: Text("Button"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: ElevatedButton(
                child: Text("ElevatedButton"),
                onPressed: (){},
              ),
            ),
            Container(
              child: TextButton(
                child: Text("TextButton"),
                onPressed: (){},
              ),
            ),
            Container(
              child: OutlineButton(
                child: Text("OutlineButton"),
                onPressed: (){},
                borderSide: BorderSide(color: Colors.blue),
                textColor: Colors.blue,
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.navigation),
                onPressed: (){},
                color: Colors.blue,
              ),
            ),
            Container(
              child: ElevatedButton(
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){},
                ),
                onPressed: (){},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),//untuk iconnya/isi textnya
                  backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                  // shape: MaterialStateProperty.all(
                  //     RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //       side: BorderSide(color: Colors.amber)
                  //     )
                  // ),
                  shape: MaterialStateProperty.all(CircleBorder()),//untuk bulat sempurna
                  side: MaterialStateProperty.all(BorderSide(color: Colors.amber)),//outline button
                ),
              ),
            ),
            Container(
              child: ElevatedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.account_box),
                label: Text("Account"),
                style: ElevatedButton.styleFrom(//style bisa menggunakan ElevatedButton.styleFrom()
                  primary: Colors.red,
                ),
              ),
            ),
            // Container(
            //   child: DropdownButton<String>(
            //     items: dataList.map( (e) => DropdownMenuItem<String>(
            //       child: Text(e),
            //     )).toList(),
            //     onChanged: (value){print(value);},
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}