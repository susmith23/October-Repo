@isTest
public class TestactivityLastWeekOpp {
    
    public static testmethod void deletiontest()
    {
    
    List<Opportunity> oplist = new List<Opportunity>();
    List<Task> tasklist = new List<Task>();
    
    Opportunity opp = new Opportunity(Name = 'Testing', CloseDate=System.today(), StageName = 'Needs Analysis');

    oplist.add(opp);
    insert oplist;
        
        Test.startTest();
        tasklist.add(new Task(WhatId= opp.Id, Subject = 'Call'));
        tasklist.add(new Task(WhatId= opp.Id, Subject = 'Call'));
        
        insert tasklist;
        
        delete tasklist.get(1);
        
        Test.stopTest();
    }
    
}