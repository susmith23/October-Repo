public class AccountTriggerHandler {
    
    public static void updateownerid(List<Account> accList, Map<Id,Account> accoldMap)
    {
        Set<Id> accId = new Set<Id>(); // for storing the ID's of account
        //iterating through new list
        for(Account acc : accList) {
            if(acc.OwnerId != accoldMap.get(acc.Id).OwnerId) {
                accId.add(acc.Id); // adding the account ID's for which owner has changed
            }
        }
        List<Account_test__c> accTestList = new List<Account_test__c>(); // list to add the Account Test records
        List<Account_test1__c> accTest1List = new List<Account_test1__c>();// list to add the Account Test1 records
        
        //iterating through Account Test where account owner's has changed 
        for(Account_test__c accTest : [select id, OwnerId , Account__c , Account__r.OwnerId from Account_test__c where Account__c in: accId]) {
            accTest.OwnerId = accTest.Account__r.OwnerId;
            accTestList.add(accTest); // adding the updated record to list
        }
        
        //iterating through Account Test where account owner's has changed
        for(Account_test1__c accTest1 : [select id, OwnerId , Account__c , Account__r.OwnerId from Account_test1__c where Account__c in: accId]) {
            accTest1.OwnerId = accTest1.Account__r.OwnerId;
            accTest1List.add(accTest1); // adding the updated record to list
        }
        
        if(accTestList.size() > 0) {
            update accTestList; // updating the list
        }
        
        if(accTest1List.size() > 0) {
            update accTest1List; // updating the list
        }
            
        
    }

}