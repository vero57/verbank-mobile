import 'package:equatable/equatable.dart';

abstract class BankState extends Equatable {
  @override
  List<Object> get props => [];
}

class BankInitial extends BankState {}

class BankLoading extends BankState {}

class BankLoaded extends BankState {
  final String data;
  BankLoaded(this.data);

  @override
  List<Object> get props => [data];
}
