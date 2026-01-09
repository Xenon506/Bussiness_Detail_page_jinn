import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Companiespage6 extends StatelessWidget {
  const Companiespage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: Text('Companies Nearby')),
        backgroundColor: Colors.cyan[800],
        foregroundColor: Colors.white,
      ),
      body: Column(

        children: [
          Text('IT Companies',
          style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
          
          ),
            SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      

      SizedBox(
        width: 300, 
        child: Card(

          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                  child: Image.asset('assets/images/logo1.jpeg'),
                  
                ),
                Text('yuvi Solutions',
                style: TextStyle(fontSize: 23,
                fontWeight: FontWeight.bold),
                ),
                Text('Diigital Marketing Company',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
                ),

                ElevatedButton(onPressed: (){}, child: Text('data')),
                // Row(
                //   children: [
                //     ElevatedButton(onPressed: (){}, child: Text('data'))
                //   ],
                // )

              ],
              
            ),
            
          ),
        ),
        
      ),
      

      SizedBox(
        width: 20,
        child: Card(

        ),
      ),
      SizedBox(
        // height: 200,
        width: 300, 
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                  child: Image.asset('assets/images/logo2.jpeg',
                  fit: BoxFit.cover,),
                  
                ),
                Text('Gro Solutions',
                style: TextStyle(fontSize: 23,
                fontWeight: FontWeight.bold),
                ),
                Text('Diigital Marketing Company',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),),
                                ElevatedButton(onPressed: (){}, child: Text('data')),

              ],
            ),
          ),
        ),
      ),
    ],
  ),
)
          
        ],
      ),
    );
  }
}
