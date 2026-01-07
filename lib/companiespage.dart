import 'package:flutter/material.dart';

class Company {
  final String name;
  final String category;
  final String tagline;
  final Color color; 
  final String imagepath;
  Company({required this.name, required this.category, required this.tagline, required this.color,required this.imagepath});
}



class Companiespage extends StatefulWidget {
  const Companiespage({super.key});

  @override
  State<Companiespage> createState() => _CompaniespageState();
}

class _CompaniespageState extends State<Companiespage> {

  final ScrollController _scrollController = ScrollController();

  double _scrollOffset = 1.0; 



  final List<Company> companiesNearby = [
    Company(name: "Digi Chetan", category: "Marketing Agency", tagline: "Data-driven Growth", color: Colors.purple.shade400,imagepath: "assets/images/logo1.jpeg"),
    Company(name: "Grovon Solutions", category: "Consulting", tagline: "Scale Seamlessly", color: Colors.teal.shade500, imagepath: "assets/images/logo2.jpeg"),
    Company(name: "Kiorons", category: "IT Company", tagline: "Innovating Tech", color: Colors.orange.shade600, imagepath: "assets/images/logo3.jpeg"),
    Company(name: "Hartalkar Innovations", category: "EV R&D", tagline: "Future Mobility", color: Colors.blue.shade700, imagepath: "assets/images/logo4.jpeg"),
    Company(name: "Example Corp", category: "AI Solutions", tagline: "Smart Automation", color: Colors.pink.shade400, imagepath: "assets/images/logo5.jpeg"),

  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateScrollOffset);
  }

  void _updateScrollOffset() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  }

  // A visually appealing card widget that scales with scroll offset

  Widget _buildDynamicCard(Company company, int index) {

    // Calculate a dynamic scale value based on scroll position to make it appealing
    
    final cardOffset = index * 100.0 - _scrollOffset; 
    final scale = (1 - (cardOffset.abs() / 500)).clamp(0.85, 1.0);
    final opacity = (1 - (cardOffset.abs() / 400)).clamp(0.6, 1.0);

    return Opacity(
      opacity: opacity,
      child: Transform.scale(
        scale: scale,
        child: Container(
          height: 120,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: company.color.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: company.color.withAlpha(25),
              backgroundImage: AssetImage(company.imagepath),
            ),
            title: Text(company.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            subtitle: Text("${company.category}\n${company.tagline}"),
            isThreeLine: true,
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text('Companies Nearby', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF0e828f),
        elevation: 0,
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // A standard SliverList for dynamic vertical scrolling items
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                // The main list of companies
                return _buildDynamicCard(companiesNearby[index], index);
              },
              childCount: companiesNearby.length,
            ),
          ),
          // Add some space at the bottom so we can see the effect fully
          const SliverToBoxAdapter(
            child: SizedBox(height: 500), 
          )
        ],
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.cyan[800],
//         foregroundColor: Colors.white,
//         title: Text(
//           "Jinn's Network",
//           style: TextStyle(fontWeight: FontWeight.w500),
//         ),
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Padding(
//                 padding: EdgeInsetsGeometry.all(8),
//                 child: 
//                   Text('Companies Nearby',
//                   style: TextStyle(fontSize: 20,
//                   fontWeight: FontWeight.bold),
//                   ),
              
//               ),
//             ],
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => Businesspage1(bid: "1"),
//                 ),
//               );
//             },
//             child: Text('Yuvi Solutions'),
//           ),
//         ],
//       ),
//     );
//   }

