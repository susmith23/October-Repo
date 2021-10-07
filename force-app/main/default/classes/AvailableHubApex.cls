public class AvailableHubApex {
    @AuraEnabled
    public static String BikeLists(String hubId){
        List<Bike__c> bikeList = [Select Id,Name,(SELECT Id,Name,Distance_KM_s__c,Booking_Time__c,Customer__r.name,Customer__r.status__c FROM Bookings__r) FROM Bike__c where hub__c=:hubId LIMIT 10];
        //system.debug('bikeList-- '+bikeList.size());
       return JSON.serialize(bikeList);
    }
    
    @AuraEnabled
    public static String hubLists(){
        List<Hub__c> hubList = [Select Id,Name,State__c,Color__c,Rating__c,Active__c FROM Hub__c LIMIT 10];
       // system.debug('hubList-- '+hubList.size());
        return JSON.serialize(hubList);
    }
}