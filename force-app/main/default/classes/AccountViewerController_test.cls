@isTest
public with sharing class AccountViewerController_test {
  @isTest
  static void test_getAccounts() {
    Account acc = new Account(Name = 'test');
    Account acc1 = new Account(Name = 'test1');
    insert new List<Account>{ acc, acc1 };
    Test.startTest();
    AccountViewerController.getAccounts(0);
    Test.stopTest();
  }
}
