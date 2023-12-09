import 'package:alarm/core/utils/duration_parser.dart';
import 'package:equatable/equatable.dart';

class Alarm extends Equatable {
  /// alarm id
  final String id;

  /// alarm title
  final String title;

  /// alarm time
  final DateTime hour;

  /// is alarm on
  final bool isOn;

  /// sound path
  final String? sound;

  /// vibrate on alarm
  final bool isVibrate;

  /// 0 = forever
  final int repeatCount;

  /// 1 = Monday, 7 = Sunday
  final List<int> weekdays;

  /// repeat every x days
  final Duration? repeatDays;

  /// repeat on wake up after x minutes
  final Duration? repeatOnWake;

  const Alarm({
    required this.id,
    required this.hour,
    required this.isOn,
    this.weekdays = const [],
    this.isVibrate = true,
    this.repeatCount = 0,
    this.title = '',
    this.sound,
    this.repeatDays,
    this.repeatOnWake,
  });

  factory Alarm.fromJson(Map<String, dynamic> json) {
    return Alarm(
      id: json['id'],
      hour: DateTime.parse(json['hour']),
      isOn: json['isOn'],
      weekdays: json['weekdays'],
      isVibrate: json['isVibrate'],
      repeatCount: json['repeatCount'],
      title: json['title'],
      sound: json['sound'],
      repeatDays: DurationParser.tryParse(json['repeatDays']),
      repeatOnWake: DurationParser.tryParse(json['repeatOnWake']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'hour': hour.toString(),
      'isOn': isOn,
      'weekdays': weekdays,
      'isVibrate': isVibrate,
      'repeatCount': repeatCount,
      'title': title,
      'sound': sound,
      'repeatDays': repeatDays?.toString(),
      'repeatOnWake': repeatOnWake?.toString(),
    };
  }

  @override
  List<Object?> get props => [
        id,
        hour,
        isOn,
        weekdays,
        isVibrate,
        repeatCount,
        title,
        sound,
        repeatDays,
        repeatOnWake,
      ];
}
