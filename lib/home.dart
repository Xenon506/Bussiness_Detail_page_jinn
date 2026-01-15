import 'package:bussiness_by_jinn/bussinesspage5.dart';
import 'package:bussiness_by_jinn/companiespage.dart';

import 'package:bussiness_by_jinn/companiespage6.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],

      ),
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(52,0,0,20),
                  child: 
                  Column(
                    children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push( 
                        context,
                         MaterialPageRoute(builder: (context) => Companiespage()),
                      );
                    }, child: const Text('companies page 1')),
                    
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => companiespage5()));
                    }, child: Text('companies page 5')),
                    
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Companiespage6()));
                    }, child: Text('companies page 6')),
                    ],),
                ),
              ],
            ),
        
        
        
          ],
        ),
      
    );
  }
}