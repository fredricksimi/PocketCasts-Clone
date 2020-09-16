import 'package:flutter/material.dart';
import './DetailPodcast.dart';

class IndividualPodcast extends StatefulWidget {

  final String text;
  final Color color;

  IndividualPodcast(this.text, this.color);

  @override
  IndividualPodcastState createState() => IndividualPodcastState();
}

class IndividualPodcastState extends State<IndividualPodcast> {
  void click() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailPodcast()));
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        this.click();
      },
      child: Container(
        width: 98,height: 98,
        color: this.widget.color,
        child: Center(
          child: Text(this.widget.text, textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
        ),
      ),
    );
  }
}