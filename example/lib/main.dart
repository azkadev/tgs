import 'dart:io';

import 'package:flutter/material.dart';
import "package:tgs/tgs.dart";
import "package:path/path.dart" as p;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FileSystemEntity> files = [];
  void loadDir({required Directory directory}) {
    setState(() {
      files = directory.listSync();
    });
  }

  @override
  void initState() {
    super.initState();
    loadDir(directory: Directory("/home/hexaminate/azkadev/telegram_sticker/sticker/shareapack"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        scrollDirection: Axis.vertical, 
        primary: false,
        shrinkWrap: true,
        itemCount:files.length,
        itemBuilder: (BuildContext context, int index) {
          FileSystemEntity fileSystemEntity = files[index];
          if (p.extension(fileSystemEntity.path) == ".tgs") {
            return SizedBox(
              height: 25,
              width: 25,
              child: TGS(
                path: fileSystemEntity.path,
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
