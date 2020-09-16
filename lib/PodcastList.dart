import 'package:flutter/material.dart';
import './Episode.dart';
class PodcastList extends StatefulWidget {
  String title;
  String time;
//  Function clicking;

  PodcastList(this.title, this.time);

  @override
  _PodcastListState createState() => _PodcastListState();
}

class _PodcastListState extends State<PodcastList> {
  void click() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailPodcast()));
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 8, 10),
      child: ListTile(
        onTap: (){ this.click();},
        leading: Icon(Icons.play_circle_outline, color: Colors.redAccent, size: 40,),
        title: Text(this.widget.title,
            style: TextStyle(color: Colors.white)),
        subtitle: Padding(
          padding: const EdgeInsets.fromLTRB(0,8,0,8),
          child: Text(this.widget.time, style: TextStyle(color:Colors.grey),),
        ),
      ),
    );
  }
}
