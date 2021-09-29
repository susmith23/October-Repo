trigger q4 on Merchandise__c (after update) {
    if(trigger.isAfter && trigger.isUpdate) {
        q4handler.unitPrice(trigger.New, trigger.OldMap);
    }
}