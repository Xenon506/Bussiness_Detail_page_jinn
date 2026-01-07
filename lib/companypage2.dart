import 'package:flutter/material.dart';



class Company {
  final String name;
  final String category;
  final String tagline;
  final Color color; 
  // final String imagepath;
  Company({required this.name, required this.category, required this.tagline, required this.color});
}



class Companiespage2 extends StatefulWidget {
  const Companiespage2({super.key});

  @override
  State<Companiespage2> createState() => _Companiespage2State();
}

class _Companiespage2State extends State<Companiespage2> {

  final ScrollController _scrollController = ScrollController();

  double _scrollOffset = 5.0; 

  // final List<

  final List<Company> companiesNearby = [
    Company(name: "Digi Chetan", category: "Marketing Agency", tagline: "Data-driven Growth", color: Colors.purple.shade400,),
    Company(name: "Grovon Solutions", category: "Consulting", tagline: "Scale Seamlessly", color: Colors.teal.shade500),
    Company(name: "Kiorons", category: "IT Company", tagline: "Innovating Tech", color: Colors.orange.shade600),
    Company(name: "Hartalkar Innovations", category: "EV R&D", tagline: "Future Mobility", color: Colors.blue.shade700),
    Company(name: "Example Corp", category: "AI Solutions", tagline: "Smart Automation", color: Colors.pink.shade400),

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
  Widget _buildNetworkNode(Company company, bool isLast) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // LEFT: Node + line
      Column(
        children: [
          // Node
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: company.color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: company.color.withOpacity(0.6),
                  blurRadius: 10,
                )
              ],
            ),
          ),

          // Connection line
          if (!isLast)
            Container(
              width: 2,
              height: 110,
              color: Colors.grey.shade300,
            ),
        ],
      ),

      const SizedBox(width: 14),

      // RIGHT: Company Card
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(bottom: 30),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: company.color.withOpacity(0.25),
                blurRadius: 16,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                company.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                company.category,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                company.tagline,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  color: company.color,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: const Color(0xFFF2F6F9),
  appBar: AppBar(
    title: const Text("Companies Nearby"),
    backgroundColor: const Color(0xFF0E828F),
    centerTitle: true,
    elevation: 0,
  ),

      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // A standard SliverList for dynamic vertical scrolling items
          SliverList(
  delegate: SliverChildBuilderDelegate(
    (context, index) {
      return _buildNetworkNode(
        companiesNearby[index],
        index == companiesNearby.length - 1,
      );
    },
    childCount: companiesNearby.length,
  ),
),
          const SliverToBoxAdapter(
            child: SizedBox(height: 500), 
          )
        ],
      ),
    );
  }
}