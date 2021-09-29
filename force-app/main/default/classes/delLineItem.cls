public class delLineItem implements Database.Batchable<sobject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        //String query = ' ';
        return Database.getQueryLocator('select id,name,(select id,name from Line_Items__r) from Merchandise__c where name = \'LP\' ');
    }
    public void execute(Database.BatchableContext BC,List<Merchandise__c> scope)
    {
        
        List<Line_Item__c> lineItemList = new List<Line_Item__c>();
        for(Merchandise__c merch : scope)
        {
            if(merch.Line_Item__r.size() > 0)
            {
                lineItemList.addall(merch.Line_Item__r);
            }
        }
        if(lineItemList.size() > 0)
        {
            delete lineItemList;
        }
    }
    public void finish(Database.BatchableContext BC)
    {     
    }
}