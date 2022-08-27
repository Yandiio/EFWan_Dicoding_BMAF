import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/data/list_data_track.dart';
import 'package:flutter_dicoding_submission/models/track.dart';
import 'package:flutter_dicoding_submission/widgets/card_track.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Track> trackList = list_data_track;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tracks'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ListView(
              scrollDirection: Axis.vertical,
              children: trackList.map((e) {
                return CardTrack(track: e);
              }).toList());
        },
      ),
    );
  }
}
