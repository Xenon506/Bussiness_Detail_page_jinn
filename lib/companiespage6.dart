import 'dart:async';

import 'package:flutter/material.dart';



class Company {
  final String name;
  final String aim;
  final String imagepath;

  Company({
    required this.name,
    required this.aim,
    required this.imagepath,
  });
}

class Companiespage6 extends StatelessWidget {
  final dynamic bid;
  const Companiespage6({super.key, required this.bid});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ImageInfo>(
      future: getImageInfo(bid),
      builder: (context, snapshot) {
        BoxFit fit = BoxFit.cover;

        if (snapshot.hasData) {
          final width = snapshot.data!.image.width;
          final height = snapshot.data!.image.height;
          final ratio = width / height;

          if (ratio > 1.6) {
            // Very wide → banner/logo
            fit = BoxFit.contain;
          } else if (ratio > 1.1) {
            // Slightly wide
            fit = BoxFit.cover;
          } else {
            // Square or tall
            fit = BoxFit.cover;
          }
        }

        return Image.asset(
          bid,
          fit: fit,
        );
      },
      
    );
  }

  Future<ImageInfo> getImageInfo(String asset) async {
    final image = AssetImage(asset);
    final config = const ImageConfiguration();
    final stream = image.resolve(config);
    final completer = Completer<ImageInfo>();
    ImageStreamListener? listener;
    listener = ImageStreamListener((info, _) {
      completer.complete(info);
      stream.removeListener(listener!);
    });
    stream.addListener(listener);
    return completer.future;
  }
  
}