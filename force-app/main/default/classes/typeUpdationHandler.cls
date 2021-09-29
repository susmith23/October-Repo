public class typeUpdationHandler {
    
    public static void updatefield(List<Account> acc)
    {
        for(Account a :acc)
        {
            if(a.Amount__c > 100)
            {
                a.CustomerType__c = 'Big';
            }
            else
            {
                a.CustomerType__c = 'Small';
            }
        }
    }

}