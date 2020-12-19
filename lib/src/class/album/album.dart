import 'package:flutter/material.dart';
import 'package:playify/src/class/song/song.dart';
import 'dart:typed_data';

class Album {
  Album(
      {@required this.title,
      @required this.songs,
      @required this.albumTrackCount,
      @required this.artistName,
      @required this.coverArt,
      @required this.discCount})
      : assert(title != null),
        assert(songs != null),
        assert(albumTrackCount != null),
        assert(artistName != null),
        assert(coverArt != null),
        assert(discCount != null);

  ///The title of the album.
  String title;

  ///The songs of the album.
  List<Song> songs;

  ///The name of the artist of the album.
  String artistName;

  ///The total tracks that the album has.
  ///
  ///This may not be equal to the total songs of the album that a user has on
  ///their device, since a song in an album may not exist on the device.
  int albumTrackCount;

  ///The cover art as a `UInt8List`. This can be used with `Image.memory()` to
  ///convert to an image and display in the UI.
  Uint8List coverArt;

  ///The total disc number of the album.
  int discCount;

  @override
  String toString() {
    return 'Title: ' +
        title +
        ' has ' +
        songs.length.toString() +
        ' songs and artist is ' +
        artistName +
        '\n';
  }
}
