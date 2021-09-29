trigger addName on Invoice__c (before insert) {
    for(Invoice__c a : Trigger.new)
    {
        a.Name = a.Name+'Absyz';
    }
}