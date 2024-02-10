import 'package:flutter/material.dart';
import 'package:news_app/view/detail_view.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsCnt;
  String newsUrl;

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch";
    }
  }

  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsHead,
      required this.newsDesc,
      required this.newsCnt,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.network(
          imgUrl,
          height: 300,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Text(
            newsHead.length > 70 ? "${newsHead.substring(0, 70)}..." : newsHead,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Text(
            newsDesc,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black38),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Text(
            newsCnt.length > 250
                ? newsCnt.substring(0, 250)
                : "${newsCnt.toString().substring(0, newsCnt.length - 15)}...",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    launchURL(newsUrl);
                  },
                  child: Text("Read more")),
            ),
          ],
        )
      ]),
    );
  }
}
