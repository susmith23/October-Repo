public with sharing class accRecords {

    @AuraEnabled
    public static List<Account> accountRecords() {
        return [Select Id, Name, Phone, AnnualRevenue, Website, Type, Rating From Account LIMIT 10];
    } 
}