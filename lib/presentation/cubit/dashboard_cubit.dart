import 'package:bloc/bloc.dart';
import 'package:dashboard_app/domain/entities/office.dart';
import 'package:dashboard_app/domain/repositories/office_repository.dart';
import 'package:equatable/equatable.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final OfficeRepository _repository;
  DashboardCubit(this._repository) : super(DashboardInitial());

  Future<void> fetchOffice() async {
    try {
      emit(DashboardLoading());
      final officeOrFailure = await _repository.getOffice();
      officeOrFailure.fold((failure) => emit(DashboardFailure("failure")),
          (office) => emit(DashboardLoaded(office)));
    } catch (e) {}
  }
}
