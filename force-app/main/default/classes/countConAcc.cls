public class countConAcc implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        String query = 'Select Id, Name, (Select Id From Contacts) From Account';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, List<Account> scope) {
        List<Account> accountList = new List<Account>();
        
        for(Account a: scope) {
            a.Number_of_Contacts__c = a.Contacts.size();
            accountList.add(a);
        }
        
        update accountList;
    }
    
    public void finish(Database.BatchableContext bc) {
        Id job = bc.getJobId();
        system.debug(job);
    }
}