part of 'dashboard_cubit.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();
}

class DashboardInitial extends DashboardState {
  const DashboardInitial();
  @override
  List<Object> get props => [];
}

class DashboardLoading extends DashboardState {
  const DashboardLoading();
  @override
  List<Object> get props => [];
}

class DashboardLoaded extends DashboardState {
  final Office office;
  const DashboardLoaded(this.office);
  @override
  List<Object> get props => [office];
}

class DashboardFailure extends DashboardState {
  final String msg;
  const DashboardFailure(this.msg);
  @override
  List<Object> get props => [msg];
}
