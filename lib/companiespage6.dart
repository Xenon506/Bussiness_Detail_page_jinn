import 'package:bussiness_by_jinn/bussinesspage1.dart';
import 'package:bussiness_by_jinn/bussinesspage2.dart';
import 'package:flutter/material.dart';

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
        crossAxisAlignment:
            CrossAxisAlignment.start, // Ensures children stay left
        children: [
          Padding(
            padding:  EdgeInsets.fromLTRB(
              8,
              1,
              20,
              0,
            ), 
            child: Align(
              alignment:
                  Alignment.centerLeft, 
              child: Text(
                'Companies',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 230,
                  // height: 200,
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
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(20),
                            ),
                            child: Image.asset('assets/images/logo1.jpeg'),
                          ),
                          Text(
                            'yuvi Solutions',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Diigital Marketing Company',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          ElevatedButton(onPressed: () {}, child: Text('data')),

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
                  width: 230,
                  // height: 200,
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
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(20),
                            ),
                            child: Image.asset('assets/images/logo4.jpeg'),
                          ),
                          Text(
                            'yuvi Solutions',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Diigital Marketing Company',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          ElevatedButton(onPressed: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => Businesspage1(bid: '1')));
                          }, child: Text('data')),
                        ],
                      ),
                    ),
                  ),
                ),



                
              ],
            ),
          ),


          Padding(
            padding:  EdgeInsets.fromLTRB(
              8,
              1,
              20,
              0,
            ), 
            child: Align(
              alignment:
                  Alignment.centerLeft, 
              child: Text(
                "NGO's",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),


          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 230,
                  // height: 200,
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
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(20),
                            ),
                            child: Image.asset('assets/images/logo5.jpeg'),
                          ),
                          Text(
                            'yuvi Solutions',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Diigital Marketing Company',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          ElevatedButton(onPressed: () {
                            Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => Bussinesspage2()));},
                          
                           child: Text('data')),

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
                  width: 230,
                  // height: 200,
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
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(20),
                            ),
                            child: Image.asset('assets/images/logo3.jpeg'),
                          ),
                          Text(
                            'yuvi Solutions',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Diigital Marketing Company',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          ElevatedButton(onPressed: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => Businesspage1(bid: '1')));
                          }, child: Text('data')),

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



                
              ],
            ),
          ),

        ],
      ),
    );
  }
}
