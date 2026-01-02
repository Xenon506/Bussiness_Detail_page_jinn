import 'package:bussiness_by_jinn/bussinesspage1.dart';
import 'package:bussiness_by_jinn/bussinesspage2.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => Businesspage1()),
            );
          }, child: const Text('Prototype 1')),
          ElevatedButton(onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Bussinesspage2()));
          }, child: Text('Prototype 2'))
        ],
      ),
    );
  }
}