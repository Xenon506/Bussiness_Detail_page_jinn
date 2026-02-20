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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber[50],
        onPressed: (){}
        ),

      appBar: AppBar(
        automaticallyImplyActions: true,
        actions: [],
        backgroundColor: const Color.fromARGB(255, 23, 24, 24),
        
         
      
    )
    );
  }
}