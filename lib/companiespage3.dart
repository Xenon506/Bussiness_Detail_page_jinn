import 'package:flutter/material.dart';

class Company {
  final String name;
  final String category;
  final String tagline;
  final Color color; 
  final String imagepath;
  Company({required this.name, required this.category, required this.tagline, required this.color,required this.imagepath, required String aim});

   get aim => null;
}


class Companiespage3 extends StatefulWidget {
  final dynamic bid;

 const Companiespage3({super.key, required this.bid});



  @override
  State<Companiespage3> createState() => _Companiespage3State();
}

class _Companiespage3State extends State<Companiespage3> {

final ScrollController _scrollController = ScrollController();
double _scrollOffset = 0;

  final List<Company> companiesNearby = [
    Company(name: "Digi Chetan", category: "Marketing Agency", tagline: "Data-driven Growth", color: Colors.purple.shade400,imagepath: "assets/images/logo1.jpeg", aim: ''),
    Company(name: "Grovon Solutions", category: "Consulting", tagline: "Scale Seamlessly", color: Colors.teal.shade500, imagepath: "assets/images/logo2.jpeg", aim: ''),
    Company(name: "Kiorons", category: "IT Company", tagline: "Innovating Tech", color: Colors.orange.shade600, imagepath: "assets/images/logo3.jpeg", aim: ''),
    Company(name: "Hartalkar Innovations", category: "EV R&D", tagline: "Future Mobility", color: Colors.blue.shade700, imagepath: "assets/images/logo4.jpeg", aim: ''),
    Company(name: "Example Corp", category: "AI Solutions", tagline: "Smart Automation", color: Colors.pink.shade400, imagepath: "assets/images/logo5.jpeg", aim: ''),
    Company(name: "Digi Chetan", category: "Marketing Agency", tagline: "Data-driven Growth", color: Colors.purple.shade400,imagepath: "assets/images/logo1.jpeg", aim: ''),


  ];



@override
void initState() {
  super.initState();
  _scrollController.addListener(() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  });
}

Widget _buildCard(Company c, int index) {
  final cardOffset = index * 140.0 - _scrollOffset;
  final scale = (1 - (cardOffset.abs() / 500)).clamp(0.85, 1.0);
  final opacity = (1 - (cardOffset.abs() / 400)).clamp(0.6, 1.0);

  return Opacity(
    opacity: opacity,
    child: Transform.scale(
      scale: scale,
      child: Container(
        height: 130,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: c.color.withOpacity(0.3), width: 1),
          boxShadow: [
            BoxShadow(
              color: c.color.withOpacity(0.2),
              blurRadius: 12,
              offset: const Offset(0, 5),
            )
          ]
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                c.imagepath,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    c.name,
                    style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    c.category,
                    style: TextStyle(
                      fontSize: 14, color: c.color,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    c.tagline,
                    style: const TextStyle(
                      fontSize: 13, color: Colors.black54
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
      ),
      body: Column(
  children: [
    const SizedBox(height: 12),
    Expanded(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: companiesNearby.length,
        itemBuilder: (context, index) {
          return _buildCard(companiesNearby[index], index);
        },
      ),
    ),
  ],
),

    );
  }
}