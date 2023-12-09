class DurationParser {
  static Duration? tryParse(String duration) {
    try {
      final parts = duration.split(':');

      return Duration(
        hours: int.parse(parts[0]),
        minutes: int.parse(parts[1]),
        seconds: double.parse(parts[2]).toInt(),
      );
    } catch (e) {
      return null;
    }
  }
}
