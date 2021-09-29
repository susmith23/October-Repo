public class picklistInvoice implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        String query = 'Select Priority__c , Invoice_Total__c from Invoice__c';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc , List<Invoice__c> inv) {
        for(Invoice__c a : inv)
        {
            if(a.Invoice_Total__c >=0 && a.Invoice_Total__c <10000)
                a.Priority__c ='Low';
            if(a.Invoice_Total__c >=10000 && a.Invoice_Total__c <=50000)
                a.Priority__c ='Medium';
            if(a.Invoice_Total__c > 50000)
                a.Priority__c='High';            
        }
        if(inv.size() > 0)
        {
            update inv;
        }
    }
    public void finish(Database.BatchableContext bc) {      
    }
}