import 'package:alarm/core/cubit/cubit.dart';
import 'package:bloc/bloc.dart';

part 'cubit_state.dart';

class BaseCubit<T> extends Cubit<CubitState<T>> {
  BaseCubit(super.rawState);

  void emitSuccess({T? data}) => emit(CubitState.success(data: data));
  void emitLoading({T? data}) => emit(CubitState.loading(data: data ?? state.data));
  void emitError({T? data}) => emit(CubitState.error(data: data ?? state.data));
}
