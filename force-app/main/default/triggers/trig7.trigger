trigger trig7 on Opportunity (before delete) {
	List<Id> opportunityIdList = new List<Id>();
    for (Opportunity a: trigger.old) {
        opportunityIdList.add(a.Id);
    }
    List<Competitor__c> idList = [SELECT ID fROM Competitor__c];
    
    delete idList;
}