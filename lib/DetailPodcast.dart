import 'package:flutter/material.dart';
import './PodcastList.dart';

void main() {
  runApp(MaterialApp(
      title: 'PocketCasts',
      home: DetailPodcast()
  ));
}
class DetailPodcast extends StatefulWidget {
  @override
  _DetailPodcastState createState() => _DetailPodcastState();
}

class _DetailPodcastState extends State<DetailPodcast> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text('Waveform: The MKBHD Podcast', style: TextStyle(fontSize: 18)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black45,
        elevation: 0.0,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.apps, color: Colors.lightBlue),
              title: Text('Podcasts',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 12))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.filter_list, color: Colors.grey),
              title: Text('Filters', style: TextStyle(color: Colors.grey))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.grey),
              title: Text('Discover', style: TextStyle(color: Colors.grey))
          ),
        ],
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        children: <Widget>[
          Container(
            height: 0,
            color: Colors.brown,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(''),
                  Icon(Icons.share, color: Colors.white,)
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                child: Material(
                    child: Image.asset('images/waveform.jpeg', width: 160, height: 160)
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.notifications, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.settings, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Icon(Icons.check, color: Colors.black, size: 12,),
                        )),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 20, 8, 20),
            child: Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black45,
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,8,8,8),
                            child: Icon(Icons.search,color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,8,8,8),
                            child: Text('Search episodes', style: TextStyle(color: Colors.grey),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 8, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('35 episodes . 0 archived', style: TextStyle(color: Colors.white),),
                Icon(Icons.more_vert, color: Colors.grey,)
              ],
            ),
          ),
          PodcastList('An Unboxing of the Galaxy Z Fold 2 in the Arizona Desert', '1h'),
          PodcastList('Microsoft Surface Duo, Samsung \'Nope\' 20, & an Airpower Competitor', '1h 14 min'),
          PodcastList('Fortnite vs. Apple, Canon R5 vs. Sony a7s iii, & Battery Size vs. Charge Speed', '1h 27 min'),
        ],
      ),
    );
  }
}