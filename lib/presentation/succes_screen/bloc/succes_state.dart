// ignore_for_file: must_be_immutable

part of 'succes_bloc.dart';

/// Represents the state of Succes in the application.
class SuccesState extends Equatable {
  SuccesState({this.succesModelObj});

  SuccesModel? succesModelObj;

  @override
  List<Object?> get props => [
        succesModelObj,
      ];
  SuccesState copyWith({SuccesModel? succesModelObj}) {
    return SuccesState(
      succesModelObj: succesModelObj ?? this.succesModelObj,
    );
  }
}
