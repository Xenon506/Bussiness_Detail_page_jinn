import 'package:bussiness_by_jinn/bussinesspage5.dart';
import 'package:bussiness_by_jinn/companiespage.dart';
import 'package:bussiness_by_jinn/companiespage3.dart';
import 'package:bussiness_by_jinn/companiespage4.dart';
import 'package:bussiness_by_jinn/companypage2.dart';
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
               MaterialPageRoute(builder: (context) => Companiespage()),
            );
          }, child: const Text('companies page 1')),

          ElevatedButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Companiespage2()));
          }, child: Text('companies page 2')),
        
        ElevatedButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Companiespage3(bid: '1')));
          }, child: Text('companies page 3')),

          ElevatedButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Companiespage4()));
          }, child: Text('companies page 4')),

          ElevatedButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => companiespage5()));
          }, child: Text('companies page 5'))



        ],
      ),
    );
  }
}