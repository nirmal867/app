part of 'office_cubit.dart';

abstract class OfficeState extends Equatable {
  const OfficeState();
}

class OfficeInitial extends OfficeState {
  const OfficeInitial();
  @override
  List<Object> get props => [];
}

class OfficeLoading extends OfficeState {
  const OfficeLoading();
  @override
  List<Object> get props => [];
}

class OfficeLoaded extends OfficeState {
  final Office office;
  const OfficeLoaded(this.office);
  @override
  List<Object> get props => [office];
}

class OfficeFailure extends OfficeState {
  final String msg;
  const OfficeFailure(this.msg);
  @override
  List<Object> get props => [msg];
}
