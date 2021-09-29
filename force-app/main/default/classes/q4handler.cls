public class q4handler {
    public static void unitPrice(List < Merchandise__c > merchList , Map<Id,Merchandise__c> MerchandiseOldValues) {
        Set < Id > merchId = new Set < Id > ();

        List < Line_Item__c > newlineItem = new List < Line_Item__c > ();

        for (Merchandise__c MerchandiseRecord: merchList) {
            if (MerchandiseRecord.Quantity__c == 20 && MerchandiseOldValues.get(MerchandiseRecord.Id).Quantity__c != MerchandiseRecord.Quantity__c) {
                merchId.add(MerchandiseRecord.Id);
            }
        }
        List < Line_Item__c > lineItemList = new List < Line_Item__c > ();
        if (merchId.size() > 0) {
            lineItemList = [Select Merchandise__r.Id, Merchandise__r.Quantity__c, Unit_Price__c
                From Line_Item__c
                Where Merchandise__r.Id IN: merchId
            ];
        }

        if (lineItemList.size() > 0) {
            for (Line_Item__c lineItemRecord: lineItemList) {
                if (lineItemRecord.Merchandise__r.Quantity__c == 20) {
                    lineItemRecord.Unit_Price__c = 2 * lineItemRecord.Unit_Price__c;
                    newlineItem.add(lineItemRecord);
                }
            }
        }
        if (newlineItem.size() > 0) {
            update newlineItem;
        }


    }
}