// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class DetailViewScreen extends StatefulWidget {
//   String newsUrl;

//   launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw "Could not launch";
//     }
//   }

//   DetailViewScreen({super.key, required this.newsUrl});

//   @override
//   State<DetailViewScreen> createState() => _DetailViewScreenState();
// }

// class _DetailViewScreenState extends State<DetailViewScreen> {
//   @override
//   void initState() {
//     super.initState();

//     setState(() {
//       widget.newsUrl = widget.newsUrl.contains("http:")
//           ? widget.newsUrl.replaceAll("http:", "https:")
//           : widget.newsUrl;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("News Adda")), body: ());
//   }
// }
