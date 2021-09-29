trigger trig8 on Competitor__c (after undelete) {
	Set<Id> competitorsId = new Set<Id>();
    
    for (Competitor__c a: trigger.New) {
        if (trigger.isUndelete) {
            competitorsId.add(a.Id);
        }
    }
    if (competitorsId.size() > 0)
    {
        q8Handler.updateBin(competitorsId);
    }
}