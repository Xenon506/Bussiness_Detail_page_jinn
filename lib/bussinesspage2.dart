import 'package:flutter/material.dart';

class Bussinesspage2 extends StatefulWidget {
  const Bussinesspage2({super.key});

  @override
  State<Bussinesspage2> createState() => _Bussinesspage2State();
}

class _Bussinesspage2State extends State<Bussinesspage2> {

  final ScrollController _scrollController = ScrollController();
double _dynamicPadding = 20.0;

  @override


void initState() {
  super.initState();
  _scrollController.addListener(() {
    setState(() {

      _dynamicPadding = (20.0 + _scrollController.offset * 0.1).clamp(20.0, 60.0);
    });
  });
}

  @override
  Widget build(BuildContext context) {
    Widget buildInfoTile(IconData icon, String title, String subtitle,
        {bool isLink = false, bool isLast = false}) {
      return Column(
        children: [
          ListTile(
            leading: Icon(icon, color: const Color(0xFF0e828f)),
            title: Text(title,
                style: const TextStyle(fontSize: 13, color: Colors.grey)),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: isLink ? Colors.blue : Colors.black87,
              ),
            ),
          ),
          if (!isLast) const Divider(indent: 70, endIndent: 20, height: 1),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0e828f),
        title: const Text('Yuvi Solutions'),
        foregroundColor: const Color.fromARGB(255, 248, 247, 245),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Background Image Container replaced with solid color 
                Container(
                  height: 80,
                  width: double.infinity,
                  color: const Color(0xFF0e828f), // Solid background color
                ),
                Positioned(
                  bottom: -40,
                  left: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "yuvi Solutions",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Aim: Scale Seamlessly",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.teal[700],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About Us",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'AI-First Executive Architects - partners with businesses to supercharge sales operations via a blend of advanced automation and elite human expertise.',
                    style: TextStyle(
                        fontSize: 15, color: Colors.grey[700], height: 1.5),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    buildInfoTile(Icons.location_on, "Address",
                        "3, 80 Ft Road, datt township, Indiranagar, Alwar"),
                    buildInfoTile(Icons.business_rounded, "HQ City",
                        "Jabalpur, Madhya Pradesh"),
                    buildInfoTile(Icons.phone, "Contact", "9131314594"),
                    buildInfoTile(Icons.language, "Website",
                        "https://grovon.in/",
                        isLink: true),
                    buildInfoTile(Icons.email, "Emails",
                        "careers@gYUvi.in\nsupport@grovon.in",
                        isLast: true),
                  ],
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.all(20),
            //   // padding: EdgeInsets.all(12),
            //   decoration: ,

            // ),
            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(15),
            //     ),
            //     child: Column(
            //       children: [
            //         buildInfoTile(Icons.location_on, "Address",
            //             "3, 80 Ft Road, datt township, Indiranagar, Alwar"),
            //         buildInfoTile(Icons.business_rounded, "HQ City",
            //             "Jabalpur, Madhya Pradesh"),
            //         buildInfoTile(Icons.phone, "Contact", "9131314594"),
            //         buildInfoTile(Icons.language, "Website",
            //             "https://grovon.in/",
            //             isLink: true),
            //         buildInfoTile(Icons.email, "Emails",
            //             "careers@gYUvi.in\nsupport@grovon.in",
            //             isLast: true),
            //       ],
            //     ),
            //   ),
            // ),
          ],
          
        ),


        
      ),
    );
  }
}





