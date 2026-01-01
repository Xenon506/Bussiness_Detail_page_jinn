import 'package:flutter/material.dart';

class Businesspage1 extends StatefulWidget {
  const Businesspage1({super.key});

  @override
  State<Businesspage1> createState() => _Businesspage1State();
}

class _Businesspage1State extends State<Businesspage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0e828f),
        title: Text('Grovon Solutions'),
        foregroundColor: const Color.fromARGB(255, 248, 247, 245),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                

                Container(
                  
                  height: 200,
                  width: 200,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 243, 239, 239),
                        offset: Offset(0, 6),
                      )
                    ]
                  ),
                  child: 
                  Column(
                    children: [
                  Text(
                        "Grovon Solutions",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text(
                        "Aim: Scale Seamlessly",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                      
                    ],
                  ),
                    
            ),
            // ClipRRect(
            //   borderRadius: BorderRadiusGeometry.circular(12),
            //     child: Image.asset(
            //         'assets/images/images.jpeg',
            //         fit: BoxFit.contain,
            //       ),
            // ),
            Container(
                  height: 200,
                  width: 200,
                  // padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 164, 27, 27).withOpacity(0.08),
                        offset: Offset(0, 4),
                        blurRadius: 8,
                        // offset: const Offset(0, 6),
                      ),
                      
                  
                    ],
                    image: DecorationImage(image:AssetImage('assets/images/images.jpeg',),
                    fit: BoxFit.cover,
                    ),
                

                ),
            ),
            
            ],
            ),
                // Divider(
                //         color: Colors.black,
                //         thickness: 1,

                //       ),
                Container(
                  // alignment: Alignment(0, 0),
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(
                          255,
                          20,
                          20,
                          20,
                        ).withOpacity(0.08),
                        blurRadius: 8,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   "Grovon Solutions",
                      //   style: TextStyle(
                      //     fontSize: 26,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      // SizedBox(height: 8),

                      Text(
                        '"Description: AI-First Executive Architects" - partners with businesses to supercharge sales operations via a blend of advanced automation and elite human expertise, delivering predictable, scalable results.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),

                      SizedBox(height: 10),
                      Divider(),

                      Text(
                        "📍 Address: 8, 80 Ft Road, HAL 3rd Stage, Indiranagar,Bengaluru, Karnataka - 560075",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),

                      Text(
                        "🏢 HQ City: Jabalpur, Madhya Pradesh",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),

                      Text(
                        "📞 Contact: 9131314594",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),

                      Text(
                        "🌐 Domain: www.grovon.in",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),

                      Text(
                        "✉️ Emails:\ncareers@grovon.in\nsupport@grovon.in",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),

                      Text(
                        "🔗 Website:\nhttps://grovon.in/",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              
            
          ],
        ),
        
      ),
    );
  }
}
