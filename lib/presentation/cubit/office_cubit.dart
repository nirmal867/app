import 'package:bloc/bloc.dart';
import 'package:dashboard_app/domain/entities/office.dart';
import 'package:dashboard_app/domain/repositories/office_repository.dart';
import 'package:equatable/equatable.dart';

part 'office_state.dart';

class OfficeCubit extends Cubit<OfficeState> {
  final OfficeRepository _repository;
  OfficeCubit(this._repository) : super(OfficeInitial());

  Future<void> fetchOffice() async {
    try {
      emit(OfficeLoading());
      final officeOrFailure = await _repository.getOffice();
      officeOrFailure.fold((failure) => emit(OfficeFailure("failure")),
          (office) => emit(OfficeLoaded(office)));
    } catch (e) {}
  }
}
