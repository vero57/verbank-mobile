class BankRepository {
  Future<String> fetchBankData() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Bank data loaded';
  }
}
