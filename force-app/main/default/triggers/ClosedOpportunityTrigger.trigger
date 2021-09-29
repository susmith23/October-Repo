trigger ClosedOpportunityTrigger on Opportunity (after insert) {
    
    List<Task> taskList = new List<Task>();
    for(Opportunity opp:trigger.new)
    {
        if(opp.StageName == 'Closed Won')
        {
            Task t =new Task();
            t.Subject = 'Follow Up Test Task';
            t.WhatId = opp.Id;
            taskList.add(t);
        }
    }
    
    if(taskList.size() >0)
    {
        insert taskList;
    }

}