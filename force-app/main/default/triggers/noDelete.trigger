trigger noDelete on Invoice__c (before delete) {
    for(Invoice__c a : trigger.old)
    {
        if(a.Status__c == 'Closed')
        {
            a.addError('You cannot delete this record');
        }
    }
}