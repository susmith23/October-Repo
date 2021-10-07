public class OutStandingDues {


    @AuraEnabled
    public static List<AggregateResult> getOutStandingDues(String contactId){
       
        return [SELECT SUM(ActualFare__c) FROM Booking__c WHERE Paid__c=false AND Customer__c =:contactId];
       
    }
 }