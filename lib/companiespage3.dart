import 'package:flutter/material.dart';

class Companiespage3 extends StatefulWidget {
  final dynamic bid;

  const Companiespage3({super.key, required this.bid});

  @override
  State<Companiespage3> createState() => _Companiespage3State();
}

class _Companiespage3State extends State<Companiespage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
      ),
    );
  }
}