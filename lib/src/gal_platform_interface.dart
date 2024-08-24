import 'dart:typed_data';

import 'gal_method_channel.dart';

/// Plugin Platform Interface to to allow Non-endorsed federated plugin
/// See: [PR](https://github.com/natsuk4ze/gal/pull/180)
base class GalPlatform {
  const GalPlatform();
  static GalPlatform instance = MethodChannelGal();

  /// throw [UnimplementedError] when Plugin [MethodChannelGal] did not
  /// define [putVideo].
  Future<String?> putVideo(String path, {String? album}) =>
      throw UnimplementedError('putVideo() has not been implemented.');

  /// throw [UnimplementedError] when Plugin [MethodChannelGal] did not
  /// define [putImage].
  Future<String?> putImage(String path, {String? album}) =>
      throw UnimplementedError('putImage() has not been implemented.');

  /// throw [UnimplementedError] when Plugin [MethodChannelGal] did not
  /// define [putImageBytes].
  Future<String?> putImageBytes(Uint8List bytes,
          {String? album, required String name}) =>
      throw UnimplementedError('putImageBytes() has not been implemented.');

  /// throw [UnimplementedError] when Plugin [MethodChannelGal] did not
  /// define [open].
  Future<void> open() =>
      throw UnimplementedError('open() has not been implemented.');

  /// throw [UnimplementedError] when Plugin [MethodChannelGal] did not
  /// define [hasAccess].
  Future<bool> hasAccess({bool toAlbum = false}) =>
      throw UnimplementedError('hasAccess() has not been implemented.');

  /// throw [UnimplementedError] when Plugin [MethodChannelGal] did not
  /// define [requestAccess].
  Future<bool> requestAccess({bool toAlbum = false}) =>
      throw UnimplementedError('requestAccess() has not been implemented.');
}
