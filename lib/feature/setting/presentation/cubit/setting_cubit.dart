import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'setting_state.dart';

@lazySingleton
class SettingCubit extends Cubit<SettingState> {
  String accessValue = 'NetWork Access';
  SettingCubit() : super(SettingInitial());
  changeNetWorkAccess(String? item) {
    accessValue = item!;
  }
}
