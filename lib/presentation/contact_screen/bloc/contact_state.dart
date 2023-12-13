// ignore_for_file: must_be_immutable

part of 'contact_bloc.dart';

/// Represents the state of Contact in the application.
class ContactState extends Equatable {
  ContactState({this.contactModelObj});

  ContactModel? contactModelObj;

  @override
  List<Object?> get props => [
        contactModelObj,
      ];
  ContactState copyWith({ContactModel? contactModelObj}) {
    return ContactState(
      contactModelObj: contactModelObj ?? this.contactModelObj,
    );
  }
}
