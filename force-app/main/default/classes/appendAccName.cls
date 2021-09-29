public class appendAccName implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc) {
        String query = 'Select Name From Account';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, List<Account> accList) {
        for(Account a: accList) {
            a.Name = 'ABSYZ ' + a.Name;
        }
        update accList;
    }
    
    public void finish(Database.BatchableContext bc) {
        
    }
}