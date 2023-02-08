import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:archive/archive_io.dart';

class TGS extends StatelessWidget {
  final String path;
  GZipDecoder gZipDecoder = GZipDecoder();
  late final bytes = InputFileStream(path);
  TGS({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.memory(Uint8List.fromList(gZipDecoder.decodeBuffer(bytes)));
  }
}
