public with sharing class conRecords {

    @AuraEnabled
    public static Account getAccount(Id accountId) {
        return [SELECT Name, BillingCity, BillingState FROM Account WHERE Id = :accountId];
    }

    @AuraEnabled
    public static Contact saveContactWithAccount(Contact contact, Id accountId) {
        contact.AccountId = accountId;
        upsert contact;
        return contact;
    }

}