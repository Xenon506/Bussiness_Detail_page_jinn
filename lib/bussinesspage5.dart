import 'package:flutter/material.dart';

class Company {
  final String name;
  final String aim;
  // final String website;
  // final IconData icon;
  final Color color;
  final String imagepath;

  Company({
    required this.name,
    required this.aim,
    // required this.website,
    // required this.icon,
    required this.color,
    required this.imagepath,
  });
}

// ignore: camel_case_types
class companiespage5 extends StatelessWidget {
  companiespage5({super.key});

  final List<Company> companies = [
    Company(
      name: 'Yogi Chetan',
      aim: 'Digital Marketing Agency',
      // website: 'www.digichetan.com',
      // icon: Icons.pie_chart,
      color: Colors.blue,
      imagepath: 'assets/images/logo1.jpeg',
    ),
    Company(
      name: 'Gro Solutions',
      aim: 'IT Company',
      // website: 'www.grovon.in',
      // icon: Icons.arrow_upward,
      color: Colors.green,
      imagepath: 'assets/images/logo2.jpeg',
    ),
    Company(
      name: 'Hart Innovations',
      aim: 'EV Research And Development',
      // website: 'www.hartalkar.com',
      // icon: Icons.electric_car,
      color: Colors.orange,
      imagepath: 'assets/images/logo3.jpeg',
    ),
    Company(
      name: 'kk',
      aim: 'IT Company',
      // website: 'www.kiorons.com',
      // icon: Icons.code,
      color: Colors.deepPurple,
      imagepath: 'assets/images/logo6.jpg',
    ),
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Companies'),
      backgroundColor: Colors.cyan[800],
      foregroundColor: Colors.white,),
      body: ListView.builder(
        itemCount: companies.length,
        itemBuilder: (context, index) {
          final company = companies[index];



          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.all(3),
              
              child: Row(
                children: [
                  
                    
                      // Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          company.imagepath,
                          height: 150,
                          width: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                    
                      SizedBox(width: 12),
                    

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(company.name,
                                style: TextStyle(
                                    fontSize: 21, fontWeight: FontWeight.bold)),
                            Text(company.aim,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[600])),
                          ],
                        ),
                      ),
                    
                      ElevatedButton(
                        onPressed: () {
                          
                        },
                        
                        child: Text('Visit',
                        style: TextStyle(color: Colors.black),),
                        
                      ),
                    ],
                  
                
              ),
            ),
          );
        },
      ),
    );
  }
}
// import 'package:bussiness_by_jinn/bussinesspage1.dart';
// import 'package:flutter/material.dart';

// class Company {
//   final String name;
//   final String category;
//   final String tagline;
//   final String logo;
//   final double rating;

//   Company({
//     required this.name,
//     required this.category,
//     required this.tagline,
//     required this.logo,
//     required this.rating,
//   });
// }

// class companiespage5 extends StatelessWidget {
//   companiespage5({super.key});

//   final List<Company> list = [
//     Company(
//       name: "Digi Chetan",
//       category: "Marketing Agency",
//       tagline: "Intelligent Growth, Infinite Reach",
//       logo: "assets/images/logo1.jpeg",
//       rating: 4.8,
//     ),
//     Company(
//       name: "Grovon Solutions",
//       category: "Consulting",
//       tagline: "Helping You Scale Fearlessly",
//       logo: "assets/images/logo2.jpeg",
//       rating: 4.6,
//     ),
//     Company(
//       name: "Kiorons",
//       category: "IT Company",
//       tagline: "Building Tomorrow’s Innovation",
//       logo: "assets/images/logo3.jpeg",
//       rating: 4.9,
//     ),
//     Company(
//       name: "Hartalkar Innovations",
//       category: "EV R&D",
//       tagline: "Charging the Future",
//       logo: "assets/images/logo4.jpeg",
//       rating: 4.7,
//     ),
//   ];

//   Widget premiumButton({required String title, required VoidCallback onTap}) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 2, horizontal:16),
//         padding: const EdgeInsets.all(18),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(18),
//           gradient: const LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFF2E3192), // Royal blue
//               Color(0xFF1BFFFF), // Aqua glow
//             ],
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black26,
//               blurRadius: 12,
//               offset: Offset(0, 6),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize:20,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   const Text(
//                     "Tap to explore services",
//                     style: TextStyle(fontSize: 14, color: Colors.white70),
//                   ),
//                 ],
//               ),
//             ),
//             const Icon(
//               Icons.arrow_forward_ios_rounded,
//               size: 20,
//               color: Colors.white,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffECF3F7),
//       appBar: AppBar(
//         title: const Text(
//           "Companies Nearby",
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         elevation: 0,
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color(0xff0e6e94), Color(0xff10a2a8)],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(14),

//         child: GridView.builder(

//           itemCount: list.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 16,
//             crossAxisSpacing: 16,
//             childAspectRatio: .74,
//           ),
//           itemBuilder: (context, index) {
//             final c = list[index];
//             return Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(22),
//                 gradient: LinearGradient(
//                   colors: [
//                     Colors.white.withOpacity(.6),
//                     Colors.white.withOpacity(.2),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 border: Border.all(color: Colors.white.withOpacity(.5)),
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 20,
//                     spreadRadius: 1,
//                     offset: const Offset(0, 10),
//                     color: Colors.blueGrey.withOpacity(.18),
//                   ),
//                 ],
//               ),

//               child: Stack(
//                 alignment: Alignment.topCenter,
//                 children: [
//                   // glowing background hero bubble
//                   Positioned(
//                     top: -35,
//                     child: Container(
//                       width: 130,
//                       height: 130,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         gradient: LinearGradient(
//                           colors: [
//                             Colors.lightBlueAccent.withOpacity(.25),
//                             Colors.tealAccent.withOpacity(.30),
//                           ],
//                         ),
//                         // blurStyle: BlurStyle.outer,
//                       ),
//                     ),
//                   ),

//                   Column(
//                     children: [
//                       const SizedBox(height: 5),

//                       // Logo card
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(14),
//                         child: Image.asset(
//                           c.logo,
//                           height: 90,
//                           width: 90,
//                           fit: BoxFit.cover,
//                         ),
//                       ),

//                       const SizedBox(height: 8),

//                       Text(
//                         c.name,
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w800,
//                         ),
//                       ),

//                       // tag chip style
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 8,
//                           vertical: 4,
//                         ),
//                         margin: const EdgeInsets.symmetric(vertical: 4),
//                         decoration: BoxDecoration(
//                           color: Colors.blueGrey.withOpacity(.08),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Text(
//                           c.category,
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.blueGrey.shade700,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),

//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 2,
//                         ),
//                         child: Text(
//                           c.tagline,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                             fontSize: 12,
//                             color: Color.fromARGB(221, 16, 16, 16),
//                           ),
//                         ),
//                       ),

//                     //  Spacer(),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(Icons.star, size: 16, color: Colors.amber),
//                           Text(
//                             "${c.rating}",
//                             style: const TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 6),

//                       // ElevatedButton(
//                       //   style: ElevatedButton.styleFrom(
//                       //     elevation: 0,
//                       //     backgroundColor: const Color(0xff0E828F),
//                       //     shape: RoundedRectangleBorder(
//                       //       borderRadius: BorderRadius.circular(16),
//                       //     ),
//                       //     padding: const EdgeInsets.symmetric(
//                       //       horizontal: 20,
//                       //       vertical: 1,
//                       //     ),
//                       //   ),
//                       //   onPressed: () {},
//                       //   child: const Text(
//                       //     "Explore",
//                       //     style: TextStyle(fontSize: 13, color: Colors.white),
//                       //   ),
//                       // ),
//                       premiumButton(
//                         title: "Yuvi Solutions",
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Businesspage1(bid: "1"),
//                             ),
//                           );
//                         },
//                       ),

//                       // const SizedBox(height: 10),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
