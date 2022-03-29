import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FormKu());
}

class FormKu extends StatefulWidget{
  @override
  BelajarForm createState() => BelajarForm();
}

class BelajarForm extends State<FormKu>{
  final _formKey = GlobalKey<BelajarForm>();
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'form flutter',
      theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          ),
          title: Text("Form Input"),
          actions: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ],
        ),
        body: Form(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  key: _formKey,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "masukan nama lengkap anda",
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.people),
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(5.0)
                    // ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}