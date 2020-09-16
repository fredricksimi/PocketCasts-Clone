import 'package:flutter/material.dart';
import './NowPlaying.dart';

void main(){
  runApp(MaterialApp(
    title: 'Episode',
    home: DetailPodcast(),
  ));
}

class DetailPodcast extends StatefulWidget {
  @override
  DetailPodcastState createState() => DetailPodcastState();
}

class DetailPodcastState extends State<DetailPodcast> {

  void move(){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NowPlaying()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white12, elevation: 0.0,
        actions: [
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,16,0),
                child: Icon(Icons.star_border, color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,18,0),
                child: Icon(Icons.share, color: Colors.white,),
              ),
            ],
          ),
        ],),
      backgroundColor: Colors.white12,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 10),
            child: Image.asset('images/waveform.jpeg', width: 200, height:200),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('An Unboxing of the Galaxy Z Fold 2 in the Arizona Desert',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Waveform: The MKBHD Podcast', textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,8,28,50),
            child: FloatingActionButton(
              child: Icon(Icons.play_circle_filled, size:80, color: Colors.white),
              backgroundColor: Colors.transparent, onPressed: (){this.move();},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.file_download, color: Colors.white),
                  ),
                  Text('Download', style: TextStyle(color:Colors.white))
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.playlist_add, color: Colors.white),
                  ),
                  Text('Up Next', style: TextStyle(color:Colors.white))
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.check_circle_outline, color: Colors.white),
                  ),
                  Text('Mark Played', style: TextStyle(color:Colors.white))
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.archive, color: Colors.white),
                  ),
                  Text('Archive', style: TextStyle(color:Colors.white))
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 70, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('04 September 2020', style: TextStyle(color: Colors.grey),),
                Text('1h', style: TextStyle(color: Colors.grey),)
              ],
            ),
          )
        ],
      ),


    );
  }
}
