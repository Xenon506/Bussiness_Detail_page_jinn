import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Businesspage1 extends StatefulWidget {
  final dynamic bid;

  const Businesspage1({super.key, required this.bid});

  @override
  State<Businesspage1> createState() => _Businesspage1State();
}

class _Businesspage1State extends State<Businesspage1> {
  final ScrollController _scrollController = ScrollController();
  final double _dynamicPadding = 20.0;

  @override
  void initState() {
    super.initState();
  }


  @override

  Widget _buildHorizontalCard(BuildContext context, List<Widget> children) {
    return Container(
      margin: EdgeInsets.all(16),
      width:
          MediaQuery.of(context).size.width * 0.8, // Each card takes 80% width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }

  Widget buildInfoTile1(
    String title,
    String subtitle, {
    String? imagePath,
    bool isLink = false,
    bool isLast = false,
  }) {
    return Column(
      children: [
        ListTile(

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

  @override
  Widget build(BuildContext context) {
    Widget buildInfoTile(
      IconData icon,
      String title,
      String subtitle, {
      bool isLink = false,
      bool isLast = false,
    }) {
      return Column(
        children: [
          ListTile(
            // leading: Icon(icon, color: const Color(0xFF0e828f)),
            leading: Icon(icon, color:  Colors.cyan[800]),

            title: Text(
              title,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: isLink ? Colors.blue : Colors.black87,
              ),
            ),
          ),
          if (!isLast) Divider(indent: 70, endIndent: 20, height: 1),
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
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: fetchBusiness(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text("Business not found"));
          }

          final data = snapshot.data!.data()!;

          return SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 90,
                      width: double.infinity,
                      color: const Color(0xFF0e828f),
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
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // 🔹 Company Logo / Image
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset(
                                'assets/images/images.jpeg',
                                height: 55, // ✅ SMALL IMAGE
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                        
                            const SizedBox(
                              width: 12,
                            ), // SPACE BETWEEN IMAGE & TEXT
                        
                        
                            // 🔹 Company Name & Aim
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        
                                 Text(
                                  data['name'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  data['aim'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 60),

                Padding(
                  padding: EdgeInsetsGeometry.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.bid,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        data['about us'],                       
                         style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),

                AnimatedPadding(
                  duration: const Duration(milliseconds: 100),
                  padding: EdgeInsets.all(
                    20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(

                      children: [
                        buildInfoTile(
                          Icons.location_on,
                          "Address",
                          data['address'],
                        ),
                        buildInfoTile(
                          Icons.business_rounded,
                          "HQ City",
                          data['hq city'],
                        ),
                        buildInfoTile(Icons.phone, "Contact", data['contact']),
                        buildInfoTile(
                          Icons.language,
                          "Website",
                          data['weblink'],
                          isLink: true,
                        ),
                        buildInfoTile(
                          Icons.email,
                          "Emails",
                          data['email'],
                          isLast: true,
                        ),
                      ],
                    ),
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Upcoming Events',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),

                // 🔹 INTERNSHIP / EVENT SLIDER
                Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 20),
                  child: SizedBox(
                    height: 330,
                    child: ListView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: _dynamicPadding),
                      children: [

                        // ===== CARD 1 =====
                        _buildHorizontalCard(context, [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(18),
                            ),
                            child: Image.asset(
                              'assets/images/images.jpeg',
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Jinn's Internship Drive",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text("MBA · Gyan Ganga Group"),
                                const SizedBox(height: 4),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 4),
                                    Text("Jabalpur"),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {

                                  },
                                  child: Text('Click here for more info'),
                                ),
                              ],
                            ),
                          ),
                        ]),

                        // ===== CARD 2 =====
                        _buildHorizontalCard(context, [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(18),
                            ),
                            child: Image.asset(
                              'assets/images/images.jpeg',
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Business Internship",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text("Operations & Sales"),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 4),
                                    Text("Indore"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),

                        // ===== CARD 3 =====
                        _buildHorizontalCard(context, [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(18),
                            ),
                            child: Image.asset(
                              'assets/images/images.jpeg',
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HR Internship",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text("Talent & Hiring"),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 2),
                                    Text("Bhopal"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

Future<DocumentSnapshot<Map<String, dynamic>>> fetchBusiness() {
  return FirebaseFirestore.instance
      .collection('business')
      .doc(widget.bid.toString()) 
      .get();
}
}