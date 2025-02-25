import 'package:flutter_bloc/flutter_bloc.dart';
import 'bank_event.dart';
import 'bank_state.dart';

class BankBloc extends Bloc<BankEvent, BankState> {
  BankBloc() : super(BankInitial());

  Stream<BankState> mapEventToState(BankEvent event) async* {
    if (event is LoadBankData) {
      yield BankLoading();
      await Future.delayed(Duration(seconds: 2));
      yield BankLoaded('Bank data loaded');
    }
  }
}
