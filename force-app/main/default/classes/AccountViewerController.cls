public with sharing class AccountViewerController {
  @AuraEnabled(cacheable=true)
  public static List<Account> getAccounts(Integer offset) {
    return [SELECT Id, Name, Test__c FROM Account LIMIT 25 OFFSET :offset];
  }
}
