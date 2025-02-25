import 'package:equatable/equatable.dart';

abstract class BankEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadBankData extends BankEvent {}
