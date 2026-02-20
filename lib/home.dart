import 'dart:math';

import 'package:bussiness_by_jinn/bussinesspage5.dart';
import 'package:bussiness_by_jinn/companiespage.dart';

import 'package:bussiness_by_jinn/companiespage6.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      extendBodyBehindAppBar:true,
      floatingActionButton: FloatingActionButton(onPressed: (){}),

      appBar: AppBar(
        automaticallyImplyActions: true,
        actions: [],
        backgroundColor: Colors.blueGrey[400],
        title: Text("At you Service",
        style: TextStyle(
          decorationColor: Colors.black,
          
         ),
         textAlign: TextAlign.center,
        //  textDirection: dirc,
        ),
         
        titleSpacing: sqrt1_2,
      ),
      
    );
  }
}