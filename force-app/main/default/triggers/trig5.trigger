trigger trig5 on Line_Item__c (after insert, after delete) {
    if(trigger.isInsert && trigger.isAfter) {
        trig5Handler.countLineItems(trigger.New);
    }
    
    if(trigger.isDelete && trigger.isAfter) {
        trig5Handler.countLineItemsPart2(trigger.Old);
    }
}