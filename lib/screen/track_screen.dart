import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/data/list_data_track.dart';
import 'package:flutter_dicoding_submission/models/track.dart';
import 'package:flutter_dicoding_submission/widgets/card_grid_track.dart';
import 'package:flutter_dicoding_submission/widgets/card_list_track.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  List<Track> trackListData = list_data_track;
  List<Track> trackList = [];
  Icon _searchIcon = const Icon(Icons.search);
  Widget _appBarTitle = const Text('Tracks');
  final TextEditingController _filter = TextEditingController();

  _searchPressed() {
    setState(() {
      if (_searchIcon.icon == Icons.search) {
        _searchIcon = const Icon(Icons.close);
        _appBarTitle = TextField(
          controller: _filter,
          decoration: const InputDecoration(
              hintText: 'Search...',
              focusColor: Colors.white,
              fillColor: Colors.white),
          onChanged: (value) {
            if (_filter.text.isNotEmpty) {
              trackListData.forEach((item) {
                if (item.name!.toLowerCase().contains(value)) {
                  setState(() {
                    trackList.clear();
                    trackList.add(item);
                  });
                } else if (value.isEmpty) {
                  trackList.clear();
                  trackList.addAll(trackListData);
                }
              });
            } else if (_filter.text.isEmpty) {
              setState(() {
                trackList.clear();
                trackList.addAll(trackListData);
              });
            }
          },
        );
      } else {
        _searchIcon = const Icon(Icons.search);
        _appBarTitle = const Text('Tracks');
        _filter.clear();
      }
    });
  }

  @override
  void initState() {
    trackList.addAll(trackListData);
    super.initState();
  }

  @override
  void dispose() {
    _filter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarTitle,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [IconButton(onPressed: _searchPressed, icon: _searchIcon)],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 800) {
            return GridView.builder(
              itemCount: trackList.length,
              itemBuilder: (BuildContext context, int index) {
                return CardGridTrack(track: trackList[index]);
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20),
            );
          } else {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: trackList.length,
              itemBuilder: (BuildContext context, int index) {
                return CardListTrack(track: trackList[index]);
              },
            );
          }
        },
      ),
    );
  }
}
