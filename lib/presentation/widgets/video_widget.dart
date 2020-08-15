import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatefulWidget {
  final List<Map<String, dynamic>> videoList;

  const VideoWidget({Key key, @required this.videoList}) : super(key: key);
  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  List _dataSourceList = List<BetterPlayerDataSource>();
  BetterPlayerConfiguration _betterPlayerConfiguration;
  BetterPlayerPlaylistConfiguration _betterPlayerPlaylistConfiguration;
  //generate list of BetterPlayerDataSource for BetterPlayerPlaylist
  List<BetterPlayerDataSource> _createDataSet(
      List<Map<String, dynamic>> videoList) {
    List generatedList = List<BetterPlayerDataSource>();
    for (var videoItem in videoList) {
      print(videoItem['sources'][0]);
      generatedList.add(BetterPlayerDataSource(
          BetterPlayerDataSourceType.NETWORK, videoItem['sources'][0]));
    }
    return generatedList;
  }

  @override
  void initState() {
    // BetterPlayerController betterPlayerController;
    _dataSourceList = _createDataSet(widget.videoList);
    _betterPlayerConfiguration =
        const BetterPlayerConfiguration(autoPlay: false, aspectRatio: 16 / 9);
    _betterPlayerPlaylistConfiguration = BetterPlayerPlaylistConfiguration(
        nextVideoDelay: const Duration(seconds: 3));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayerPlaylist(
        betterPlayerConfiguration: _betterPlayerConfiguration,
        betterPlayerDataSourceList: _dataSourceList,
        betterPlayerPlaylistConfiguration: _betterPlayerPlaylistConfiguration,
      ),
    );
  }
}
