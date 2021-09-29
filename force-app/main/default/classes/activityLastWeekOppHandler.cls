public class activityLastWeekOppHandler {
    
    public static void insertion(list<Opportunity> opp)
    {
      
        //Activity total
        if(activityLastWeekBoolean.isCheck == false)
        {
            activityLastWeekBoolean.isCheck = true;
        
        List<Opportunity> totList = [Select Id, Name , All_Activities__c, (Select id from Tasks) from Opportunity ];
        
        List<Opportunity> totUpdate = new List<Opportunity>();
        
        for(Opportunity O : totList)
        {
            O.All_Activities__c = O.Tasks.size();
            System.debug('Total Count' +O.Tasks.size());
            totUpdate.add(O);
        }               
            
        if(totUpdate.size() > 0)
        {
            update totUpdate;
        }
        
      //Activity Last week
        List<Opportunity> oList = [Select Id, Name , Activities_Last_Week__c, (Select id from Tasks where CreatedDate = LAST_N_DAYS : 7) from Opportunity ];
        
        List<Opportunity> opUpdate = new List<Opportunity>();
        
        for(Opportunity O : oList)
        {
            O.Activities_Last_Week__c = O.Tasks.size();
            System.debug('Field Updation' +O.Tasks.size());
            opUpdate.add(O);
        }
        
            if(opUpdate.size() > 0)
        {
            update opUpdate;
        }
        }      
        
      // Tasks Last Month  
      // 
        List<Opportunity> opporList = [Select Id, Name , Activities_Last_Month__c, (Select id from Tasks where CreatedDate = LAST_MONTH) from Opportunity ];
        
        List<Opportunity> opporUpdate = new List<Opportunity>();
        
        for(Opportunity O : opporList)
        {
            O.Activities_Last_Month__c = O.Tasks.size();
            System.debug('Field Update' +O.Tasks.size());
            opporUpdate.add(O);
        }
        
             
        if(opporUpdate.size() > 0)
        {
            update opporUpdate;
        }
        
        List<Opportunity> dueList = [Select Id, Name , DueDate_count__c, (Select id from Tasks where ActivityDate = LAST_MONTH) from Opportunity ];
        
        List<Opportunity> dueUpdate = new List<Opportunity>();
        
        for(Opportunity O : dueList)
        {
            O.DueDate_count__c = O.Tasks.size();
            System.debug('Due Count' +O.Tasks.size());
            dueUpdate.add(O);
        }               
            
        if(dueUpdate.size() > 0)
        {
            update dueUpdate;
        }

    }
    
    public static void deletion(List<Opportunity> delList)
    {
        //All activity
        if(activityLastWeekBoolean.isCheck = false)
        {
            activityLastWeekBoolean.isCheck = true;
            
        List<Opportunity> deleteList = [Select Id, Name , All_Activities__c, (Select id from Tasks) from Opportunity ];
        
        List<Opportunity> delUpdate = new List<Opportunity>();
        
        for(Opportunity O : deleteList)
        {
            O.All_Activities__c = O.Tasks.size();
            System.debug('Total Count Deletion' +O.Tasks.size());
            delUpdate.add(O);
        }
        
        
        if(delUpdate.size() > 0)
        {
            update delUpdate;
        }
 
      //Activity Last week
        List<Opportunity> odList = [Select Id, Name , Activities_Last_Week__c, (Select id from Tasks where CreatedDate = LAST_N_DAYS : 7) from Opportunity ];
        
        List<Opportunity> opdUpdate = new List<Opportunity>();
        
        for(Opportunity O : odList)
        {
            O.Activities_Last_Week__c = O.Tasks.size();
            System.debug('Field Updation Deletion' +O.Tasks.size());
            opdUpdate.add(O);
        }
        
        
        if(opdUpdate.size() > 0)
        {
            update opdUpdate;
        }
        
        
      
        
      // Tasks Last Month  
       
        List<Opportunity> oppordList = [Select Id, Name , Activities_Last_Month__c, (Select id from Tasks where CreatedDate = LAST_MONTH) from Opportunity ];
        
        List<Opportunity> oppordUpdate = new List<Opportunity>();
        
        for(Opportunity O : oppordList)
        {
            O.Activities_Last_Month__c = O.Tasks.size();
            System.debug('Field Update Deletion' +O.Tasks.size());
            oppordUpdate.add(O);
        }
        
            
        if(oppordUpdate.size() > 0)
        {
            update oppordUpdate;
        }
        }
    }
    
    public static void updation(list<Opportunity> opp)
    {
        
      
        //Activity total
        if(activityLastWeekBoolean.isCheck == false)
        {
            activityLastWeekBoolean.isCheck = true;
        
        List<Opportunity> totList = [Select Id, Name , All_Activities__c, (Select id from Tasks) from Opportunity ];
        
        List<Opportunity> totUpdate = new List<Opportunity>();
        
        for(Opportunity O : totList)
        {
            O.All_Activities__c = O.Tasks.size();
            System.debug('Total Count' +O.Tasks.size());
            totUpdate.add(O);
        }               
            
        if(totUpdate.size() > 0)
        {
            update totUpdate;
        }
        
      //Activity Last week
        List<Opportunity> oList = [Select Id, Name , Activities_Last_Week__c, (Select id from Tasks where CreatedDate = LAST_N_DAYS : 7) from Opportunity ];
        
        List<Opportunity> opUpdate = new List<Opportunity>();
        
        for(Opportunity O : oList)
        {
            O.Activities_Last_Week__c = O.Tasks.size();
            System.debug('Field Updation' +O.Tasks.size());
            opUpdate.add(O);
        }
        
            if(opUpdate.size() > 0)
        {
            update opUpdate;
        }
        }      
        
      // Tasks Last Month  
      // 
        List<Opportunity> opporList = [Select Id, Name , Activities_Last_Month__c, (Select id from Tasks where CreatedDate = LAST_MONTH) from Opportunity ];
        
        List<Opportunity> opporUpdate = new List<Opportunity>();
        
        for(Opportunity O : opporList)
        {
            O.Activities_Last_Month__c = O.Tasks.size();
            System.debug('Field Update' +O.Tasks.size());
            opporUpdate.add(O);
        }
        
             
        if(opporUpdate.size() > 0)
        {
            update opporUpdate;
        }
        
        List<Opportunity> dueList = [Select Id, Name , DueDate_count__c, (Select id from Tasks where ActivityDate = LAST_MONTH) from Opportunity ];
        
        List<Opportunity> dueUpdate = new List<Opportunity>();
        
        for(Opportunity O : dueList)
        {
            O.DueDate_count__c = O.Tasks.size();
            System.debug('Due Count' +O.Tasks.size());
            dueUpdate.add(O);
        }               
            
        if(dueUpdate.size() > 0)
        {
            update dueUpdate;
        }

    }
}