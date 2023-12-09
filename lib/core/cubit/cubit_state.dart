part of 'base_cubit.dart';

class CubitState<T> {
  final StateType type;
  final T? data;

  CubitState({
    required this.type,
    this.data,
  });

  factory CubitState.success({T? data}) => CubitState(type: StateType.success, data: data);
  factory CubitState.loading({T? data}) => CubitState(type: StateType.loading, data: data);
  factory CubitState.error({T? data}) => CubitState(type: StateType.error, data: data);
}
