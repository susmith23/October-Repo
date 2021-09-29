trigger activityLastWeekOpp on Task (after insert, after delete, after undelete, after update) {
    
    List<Opportunity> oppList = new List<Opportunity>();
    if(trigger.isInsert && trigger.isAfter)
    {
        
        activityLastWeekOppHandler.insertion(oppList);
    }
    
    List<Opportunity> oppdList = new List<Opportunity>();
    if(trigger.isDelete && trigger.isAfter)
    {
        activityLastWeekOppHandler.deletion(oppdList);
    }
    
    if(trigger.isUndelete && trigger.isAfter)
    {
        activityLastWeekOppHandler.insertion(oppList);
    }
    if(trigger.isUpdate && trigger.isAfter)
    {
      /*  List<Task> tList1 = [select ActivityDate from Task];
        
        for(Task t : trigger.new) {
            
            List<Task> tList = new List<Task>();
            if(t.ActivityDate != NULL) {
                if(t.ActivityDate   tList1.ActivityDate )
                tList.add(t);
            }
        } */
        System.debug('Hello');
        activityLastWeekOppHandler.insertion(oppList);
    }

}