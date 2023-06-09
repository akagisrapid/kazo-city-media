import 'package:flutter/material.dart';

class WriterModel {
  final String name;
  final String imageUri;
  final int episodeNumber;
  WriterModel(
      {required this.name,
      required this.imageUri,
      required this.episodeNumber});
}

class WriterItem extends StatelessWidget {
  const WriterItem({super.key, required this.writer});
  final WriterModel writer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(writer.imageUri),
        Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Episode ${writer.episodeNumber}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.white)),
                      Text(writer.name,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ])))
      ],
    );
  }
}
