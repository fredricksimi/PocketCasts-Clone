import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import './IndividualPodcast.dart';

class NowPlaying extends StatefulWidget {
  @override
  NowPlayingState createState() => NowPlayingState();
}

class NowPlayingState extends State<NowPlaying> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
//        leading: Icon(Icons.keyboard_arrow_down),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Now Playing', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                    Text('Notes', style: TextStyle(color: Colors.grey),)
                  ],
                ),
                Icon(Icons.playlist_play, color: Colors.grey,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/waveform.jpeg', width: 280, height: 280),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('An Unboxing of the Galaxy Z Fold 2 in the Arizona Desert',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Waveform: The MKBHD Podcast', style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18,8,18,8),
            child: Divider(thickness: 2, height: 2, color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18,2,18,2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('00:15', style: TextStyle(color: Colors.grey),),
                Text('-59:45', style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 8, 28, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.replay_10, color: Colors.white, size: 60,),
                Icon(Icons.play_circle_filled, color: Colors.white, size: 90,),
                Icon(Icons.forward_30, color: Colors.white, size: 60,)
              ],
            ),
          ),
          Material(
            color: Colors.white12,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 22, 8, 22),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.av_timer, color: Colors.grey, size: 28,),
                  Icon(Icons.snooze, color: Colors.grey, size: 28,),
                  Icon(Icons.star_border, color: Colors.grey, size: 28,),
                  Icon(Icons.share, color: Colors.grey, size: 28,),
                  Icon(Icons.more_vert, color: Colors.grey, size: 28,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
