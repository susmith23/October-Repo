public with sharing class amountDue {
    @AuraEnabled
    public static List<AggregateResult> getDues(String contactId) {
        return [Select SUM(ActualFare__c) FROM Booking__c WHERE Paid__c = false AND Customer__c =: contactId];
    }
}