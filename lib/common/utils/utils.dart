import 'dart:math';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

class Utils {
  static bool isDesktop = Platform.isWindows || Platform.isMacOS || Platform.isLinux;
  static bool isApp = Platform.isAndroid || Platform.isIOS;
  static bool isWeb = kIsWeb;

  // generateRandomString ...
  static String generateRandomString(int length) {
    final random = Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
  }

  // formatWithSpaces ...
  static String formatWithSpaces(String input, int chunkSize) {
    const String separator = " ";
    final int length = input.length;
    final int groupCount = (length / chunkSize).ceil();
    final int lastGroupSize = length % chunkSize;
    final int lastGroupIndex = groupCount - 1;
    final StringBuffer buffer = StringBuffer();

    for (int i = 0; i < length; i += chunkSize) {
      int groupIndex = i ~/ chunkSize;
      int groupSize = (groupIndex == lastGroupIndex && lastGroupSize != 0)
          ? lastGroupSize
          : chunkSize;
      buffer.write(input.substring(i, i + groupSize));

      if (groupIndex != lastGroupIndex) {
        buffer.write(separator);
      }
    }

    return buffer.toString();
  }
}
