// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:archive/archive_io.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   final zip = ZipDecoder();
// //   MyApp({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     // final bytes = zip.decodeBuffer(InputFileStream("/home/hexaminate/Documents/HEXAMINATE/app/tgs/file_262.tgs"));

// //     return MaterialApp(
// //       home: Scaffold(
// //         body: ListView(
// //           children: [
// //             // Load an animation and its images from a zip file
// //             // Lottie.file(File('/home/hexaminate/Documents/HEXAMINATE/app/tgs/file_262.tgs')),
// //             // Lottie.memory(bytes),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // ignore_for_file: unused_local_variable, duplicate_ignore

// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: true,
//       title: "Azka Dev",
//       home: App(),
//     ),
//   );
// }

// class App extends StatefulWidget {
//   const App({super.key});
//   @override
//   MyApp createState() => MyApp();
// }

// class MyApp extends State<App> {
//   final zip = GZipDecoder();
//   final bytes = (InputFileStream("/home/hexaminate/Documents/HEXAMINATE/app/tgs/file_262.tgs"));

//   @override
//   // ignore: duplicate_ignore, duplicate_ignore
//   Widget build(BuildContext context) {
//     var res = zip.decodeBuffer(bytes);

//     return MaterialApp(
//       home: Scaffold(
//         body: ListView(
//           children: [
//             Lottie.memory(Uint8List.fromList(res)),
//           ],
//         ),
//       ),
//     );
//   }
// }

export "widget/widget.dart";
