import 'package:flutter/material.dart';
import 'package:rp_cast/models/podcast.dart';

class PodcastTile extends StatelessWidget {

  final Podcast podcast;
  PodcastTile({ this.podcast });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 6.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage('assets/linux_unplugged.jpg'),
          ),
          title: Text(podcast.podcastName),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  podcast.episodeName,
              ),
              Text(
                podcast.episodeDuration
              ),
            ],
          ),
          trailing: Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
