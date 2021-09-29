@isTest
private class activityLastWeekOppHandler_Test{
  @testSetup
  static void setupTestData(){
    test.startTest();
    Opportunity opportunity_Obj = new Opportunity(IsPrivate = false, Name = 'Name591', Description = '6', StageName = 'Prospecting', Amount = 8, Probability = 9, TotalOpportunityQuantity = 11, CloseDate = Date.today(), Type = 'Existing Customer - Upgrade', NextStep = 'NextStep558', LeadSource = 'Web', ForecastCategoryName = 'Omitted',  Activities_Last_Week__c = 49, Activities_Last_Month__c = 52, All_Activities__c = 53);
    Insert opportunity_Obj; 
    Task task_Obj = new Task(  TaskSubtype = 'Task', prod_Name__c = 'one');
    Insert task_Obj; 
    test.stopTest();
  }
  static testMethod void test_insertion_UseCase1(){
    List<Opportunity> opportunity_Obj  =  [SELECT Id,IsDeleted,AccountId,IsPrivate,Name,Description,StageName,Amount,Probability,ExpectedRevenue,TotalOpportunityQuantity,CloseDate,Type,NextStep,LeadSource,IsClosed,IsWon,ForecastCategory,ForecastCategoryName,CampaignId,HasOpportunityLineItem,Pricebook2Id,CreatedDate,CreatedById,LastModifiedDate,LastModifiedById,SystemModstamp,LastActivityDate,FiscalQuarter,FiscalYear,Fiscal,LastViewedDate,LastReferencedDate,SyncedQuoteId,ContractId,HasOpenActivity,HasOverdueTask,DeliveryInstallationStatus__c,TrackingNumber__c,OrderNumber__c,CurrentGenerators__c,MainCompetitors__c,Data_Quality_Description__c,Data_Quality_Score__c,Days_to_Close__c,testing__c,Value__c,Activities_Last_Week__c,Acc_Check__c,Acc_Value__c,Activities_Last_Month__c,All_Activities__c from Opportunity];
    System.assertEquals(true,opportunity_Obj.size()>0);
    List<Task> task_Obj  =  [SELECT Id,WhoId,WhatId,Subject,ActivityDate,Status,Priority,IsHighPriority,Description,Type,IsDeleted,AccountId,IsClosed,CreatedDate,CreatedById,LastModifiedDate,LastModifiedById,SystemModstamp,IsArchived,CallDurationInSeconds,CallType,CallDisposition,CallObject,ReminderDateTime,IsReminderSet,RecurrenceActivityId,IsRecurrence,RecurrenceStartDateOnly,RecurrenceEndDateOnly,RecurrenceTimeZoneSidKey,RecurrenceType,RecurrenceInterval,RecurrenceDayOfWeekMask,RecurrenceDayOfMonth,RecurrenceInstance,RecurrenceMonthOfYear,RecurrenceRegeneratedType,TaskSubtype,Data_Quality_Description__c,Data_Quality_Score__c,prod_Name__c,ON_TIME__c,completed_date__c from Task];
    System.assertEquals(true,task_Obj.size()>0);
    activityLastWeekOppHandler obj01 = new activityLastWeekOppHandler();
    activityLastWeekOppHandler.insertion(opportunity_Obj);
  }
  static testMethod void test_deletion_UseCase1(){
    List<Opportunity> opportunity_Obj  =  [SELECT Id,IsDeleted,AccountId,IsPrivate,Name,Description,StageName,Amount,Probability,ExpectedRevenue,TotalOpportunityQuantity,CloseDate,Type,NextStep,LeadSource,IsClosed,IsWon,ForecastCategory,ForecastCategoryName,CampaignId,HasOpportunityLineItem,Pricebook2Id,CreatedDate,CreatedById,LastModifiedDate,LastModifiedById,SystemModstamp,LastActivityDate,FiscalQuarter,FiscalYear,Fiscal,LastViewedDate,LastReferencedDate,SyncedQuoteId,ContractId,HasOpenActivity,HasOverdueTask,DeliveryInstallationStatus__c,TrackingNumber__c,OrderNumber__c,CurrentGenerators__c,MainCompetitors__c,Data_Quality_Description__c,Data_Quality_Score__c,Days_to_Close__c,testing__c,Value__c,Activities_Last_Week__c,Acc_Check__c,Acc_Value__c,Activities_Last_Month__c,All_Activities__c from Opportunity];
    System.assertEquals(true,opportunity_Obj.size()>0);
    List<Task> task_Obj  =  [SELECT Id,WhoId,WhatId,Subject,ActivityDate,Status,Priority,IsHighPriority,Description,Type,IsDeleted,AccountId,IsClosed,CreatedDate,CreatedById,LastModifiedDate,LastModifiedById,SystemModstamp,IsArchived,CallDurationInSeconds,CallType,CallDisposition,CallObject,ReminderDateTime,IsReminderSet,RecurrenceActivityId,IsRecurrence,RecurrenceStartDateOnly,RecurrenceEndDateOnly,RecurrenceTimeZoneSidKey,RecurrenceType,RecurrenceInterval,RecurrenceDayOfWeekMask,RecurrenceDayOfMonth,RecurrenceInstance,RecurrenceMonthOfYear,RecurrenceRegeneratedType,TaskSubtype,Data_Quality_Description__c,Data_Quality_Score__c,prod_Name__c,ON_TIME__c,completed_date__c from Task];
    System.assertEquals(true,task_Obj.size()>0);
    activityLastWeekOppHandler obj01 = new activityLastWeekOppHandler();
    activityLastWeekOppHandler.deletion(opportunity_Obj);
  }
}