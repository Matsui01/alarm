import 'package:floor/floor.dart';

@entity
class AlarmEntity {
  @primaryKey
  final String id;
  final String title;
  final DateTime hour;
  final bool isOn;
  final String? sound;
  final bool isVibrate;
  final int repeatCount;
  final List<int> weekdays;
  final String? repeatDays;
  final String? repeatOnWake;

  AlarmEntity({
    required this.id,
    required this.title,
    required this.hour,
    required this.isOn,
    required this.isVibrate,
    required this.repeatCount,
    required this.weekdays,
    this.sound,
    this.repeatDays,
    this.repeatOnWake,
  });
}
