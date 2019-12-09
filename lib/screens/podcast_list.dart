import 'package:flutter/material.dart';
import 'package:rp_cast/models/podcast.dart';
import 'package:rp_cast/screens/podcast_tile.dart';

class PodCastList extends StatefulWidget {
  @override
  _PodCastListState createState() => _PodCastListState();
}

class _PodCastListState extends State<PodCastList> {
  @override
  Widget build(BuildContext context) {

    final List<Podcast> podcasts = [
      Podcast(podcastName: 'Linux Unplugged', episodeNumber: '330', episodeName: 'Tis the SSHession', episodeDuration: '32:00'),
      Podcast(podcastName: 'Linux Unplugged', episodeNumber: '330', episodeName: 'Tis the SSHession', episodeDuration: '32:00'),
      Podcast(podcastName: 'Linux Unplugged', episodeNumber: '330', episodeName: 'Tis the SSHession', episodeDuration: '32:00'),
    ];

    return ListView.builder(
      itemCount: podcasts.length,
      itemBuilder: (context, index) {
        return PodcastTile(podcast: podcasts[index],);
      },
    );
  }
}
