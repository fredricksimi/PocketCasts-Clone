import 'package:flutter/material.dart';
import 'IndividualPodcast.dart';

void main() {
  runApp(MaterialApp(
      title: 'PocketCasts',
      home: PocketCastsHome()
  ));
}

class PocketCastsHome extends StatefulWidget {
  @override
  PocketCastsHomeState createState() => PocketCastsHomeState();
}


class PocketCastsHomeState extends State<PocketCastsHome> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Podcasts', style: TextStyle(fontSize: 20,
                      color:Colors.white))],
              ),
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Icon(Icons.search, color: Colors.lightBlueAccent,),
                    ),
                    Icon(Icons.more_vert, color: Colors.lightBlueAccent)
                  ]
              )
            ],
          ),
          backgroundColor: Colors.grey[700],
          toolbarHeight: 70,
        ),
        bottomSheet: BottomAppBar(
          color: Colors.grey[700],
          elevation: 0.0,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0 , 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.image, color: Colors.white, size:25),
                Icon(Icons.replay_10, color: Colors.white, size:25),
                Icon(Icons.play_circle_filled, color: Colors.white, size:45),
                Icon(Icons.forward_30, color: Colors.white, size:25),
                Icon(Icons.playlist_play, color:Colors.white, size:25)
              ],
            ),
          ),
        ),

        body: Container(
//            color: Colors.grey[900],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IndividualPodcast('Waveform:\nThe MKBHD Podcast', Colors.redAccent),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.apps, color: Colors.lightBlue),
                title: Text('Podcasts',
                    style: TextStyle(color: Colors.lightBlue, fontSize: 12))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.filter_list, color: Colors.grey),
                title: Text('Filters', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.grey),
                title: Text('Discover', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
            ),
          ],
        ),
      ),
    );
  }
}


