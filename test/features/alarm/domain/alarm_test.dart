import 'package:alarm/features/alarm/alarm.dart';
import 'package:test/test.dart';

void main() {
  Alarm alarm = Alarm(
    id: 'id',
    hour: DateTime.now(),
    isOn: true,
    weekdays: const [1, 2, 3, 4, 5, 6, 7],
    isVibrate: true,
    repeatCount: 1,
    title: 'Teste',
    sound: null,
    repeatDays: const Duration(days: 2),
    repeatOnWake: const Duration(minutes: 5),
  );

  test('Should return a valid model from json', () {
    //arrange
    final json = alarm.toJson();
    //act
    final result = Alarm.fromJson(json);
    //assert
    expect(result, alarm);
  });
}
