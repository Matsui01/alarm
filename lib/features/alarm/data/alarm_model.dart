import 'package:alarm/features/alarm/domain/domain.dart';

class AlarmModel extends Alarm {
  const AlarmModel({
    required super.id,
    required super.hour,
    required super.isOn,
    super.weekdays,
    super.isVibrate,
    super.repeatCount,
    super.title,
    super.sound,
    super.repeatDays,
    super.repeatOnWake,
  });
}
