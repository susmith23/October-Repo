public class p2three {
    public static void updationUnitPrice() {
        Set<Merchandise__c> merchSet = new Set<Merchandise__c>();
        List<Merchandise__c> merchIdList = [Select Id From Merchandise__c];
        List<Merchandise__c> merchPriceList = [Select Price__c From Merchandise__c];
        System.debug('Prices of Merchandises are: ');
        
        for (Merchandise__c a: merchIdList) {
            System.debug(a);
        }
        
        List<Line_Item__c> lineItemList = [Select Merchandise__r.Id, Merchandise__r.Price__c, Unit_Price__c From Line_Item__c];
        
        System.debug('Before updating unit prices of line items are: ');
        
        for (Line_Item__c b: lineItemList) {
            System.debug(b);
        }
        
        for (Merchandise__c c: merchPriceList) {
            merchSet.add(c);
        }
        
        AggregateResult[] agg = [Select Count(Id) cid, Merchandise__r.Id mid 
                                 From Line_Item__c 
                                 Where Merchandise__r.Id =: merchSet 
                                 Group By Merchandise__r.Id];
        
        System.debug('Aggregate Result: ' + agg);
        
        for (Integer i = 0; i < agg.size(); i++) {
            Integer aggr = (Integer)agg[i].get('cid');
            System.debug('Integer value: ' + aggr);
            Object mid = agg[i].get('mid');
        	for (Line_Item__c d: lineItemList) {
                if (d.Merchandise__r.Id == mid)
                    d.Unit_Price__c = (d.Merchandise__r.Price__c) / aggr;
           	}
            update lineItemList;
        }
        
        System.debug('After updating of unit prices of line items are: ');
        
        for (Line_Item__c e: lineItemList) {
            System.debug(e);
        }
        
        
    }
}