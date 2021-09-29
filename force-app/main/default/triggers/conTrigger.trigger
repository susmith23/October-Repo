trigger conTrigger on Contact (after insert , after update) {
    if(trigger.isAfter)
    {
        if(trigger.IsInsert || trigger.IsUpdate)
        {
            List<Contact> conList = new List<Contact>();
            for(Contact conRec : trigger.new)
            {
                if(conRec.AccountId != null && conRec.Primary_Contact__c == true)
                {
                    conList.add(conRec);
                }
            }
            if(conList.size() > 0)
            {
                conHandler.updatePrimary(conList);
            }
        }
    }  
}