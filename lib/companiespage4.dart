import 'package:flutter/material.dart';

class Company {
  final String name;
  final String category;
  final String tagline;
  final String image;
  // final double rating;

  Company({
    required this.name,
    required this.category,
    required this.tagline,
    required this.image,
    // required this.rating,
  });
}

class Companiespage4 extends StatelessWidget {
  Companiespage4({super.key});

  final List<Company> companies = [
    Company(
      name: "Digi Chetan",
      category: "Marketing Agency",
      tagline: "Growth through intelligence",
      image: "assets/images/logo1.jpeg",
      // rating: 4.8,
    ),
    Company(
      name: "Grovon Solutions",
      category: "Consulting",
      tagline: "Scale Seamlessly",
      image: "assets/images/logo2.jpeg",
      // rating: 4.6,
    ),
    Company(
      name: "Kiorons",
      category: "IT Company",
      tagline: "Innovation Everyday",
      image: "assets/images/logo3.jpeg",
      // rating: 4.9,
    ),
    Company(
      name: "Hartalkar Innovations",
      category: "EV R&D",
      tagline: "Future Mobility",
      image: "assets/images/logo4.jpeg",
      // rating: 4.7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      appBar: AppBar(
        backgroundColor: const Color(0xff0E828F),
        elevation: 0,
        title: const Text(
          "Companies Nearby",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: companies.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
            childAspectRatio: .82,  // fits more content
          ),
          itemBuilder: (context, index) {
            final c = companies[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.08),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(18),
                    ),
                    child: Image.asset(
                      c.image,
                      height: 80,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    c.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    c.category,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      c.tagline,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  const Spacer(),

                  // ⭐ Rating Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const Icon(Icons.star, size: 16, color: Colors.amber),
                      // Text("${c.rating}",
                      //     style: const TextStyle(
                      //       fontWeight: FontWeight.w600,
                      //       fontSize: 13,
                      //     )),
                    ],
                  ),

                  const SizedBox(height: 6),

                  // 🔘 Soft button
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: const Color(0xff0E828F),
                        elevation: 0,
                      ),
                      onPressed: () {
                        // navigate here
                      },
                      child: const Text(
                        "View",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
