trigger Triggerforformulacheck on Contact (after insert, after update) {
    
    Set<Id> accId = new Set<Id>();
    for(Contact con : trigger.new)
    {
        accId.add(con.AccountId);
        System.debug('ids' +accId);
    }
    //List<Account> accList = [Select id,Name, (Select Name,Weight__c, Value_check__c, Value_Cuurency__c from Contacts) from Account where Id in: accId];
    
    for(Account ac : [Select id,Name,Amount__c, (Select Name,Weight__c,Gender__c, Value_check__c, Value_Cuurency__c from Contacts) from Account where Id in: accId])
    {
        for(Contact cont : ac.Contacts)
        {
            if(cont.Weight__c == 'Accepted' )
            {
                System.debug('Hello1');
               // cont.Value_check__c = ac.Amount__c;
               ac.Value__c = cont.Value_Cuurency__c;
                System.debug('test1' +cont.Value_Cuurency__c);
            }           
        }
    }
}