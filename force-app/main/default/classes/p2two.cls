public class p2two {
    public static void test() {
        Set<Invoice__c> invoiceSet = new Set<Invoice__c>();
        List<Invoice__c> invoiceIdList = [Select Id From Invoice__c];
        List<Invoice__c> invoiceStatusList = [Select Status__c From Invoice__c];
        System.debug('Invoices status before are: ');
        
        for (Invoice__c a: invoiceStatusList) {
            System.debug(a);
        }
        
        List<Line_Item__c> lineItemList = [Select Invoice__r.Id, Invoice__r.Status__c,Line_Item_Total__c From Line_Item__c];
        
        for (Line_Item__c b: lineItemList) {
            System.debug(b);
        }
        
        for (Invoice__c c: invoiceStatusList) {
            System.debug(c);
        }
        
        AggregateResult[] agg = [Select Count(Id) cid, Invoice__r.Id sid
                              	From Line_Item__c
                              	Where Invoice__r.Id =: invoiceSet
                              	Group By Invoice__r.Id];
        
        System.debug(agg);
        
        for (Integer i = 0; i < agg.size(); i++) {
            Integer aggr = (Integer)agg[i].get('cid');
            System.debug('Integer value '+ aggr);
            Object sid = agg[i].get('sid');
            for (Line_Item__c d: lineItemList) {
               if (d.Line_Item_Total__c > 100) 
                   d.Invoice__r.Status__c = 'Closed';
            }
            update lineItemList;
        }
        
        for (Line_Item__c e: lineItemList) {
            System.debug(e);
        }
    }   
}