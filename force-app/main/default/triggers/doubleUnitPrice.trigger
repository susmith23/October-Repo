trigger doubleUnitPrice on Line_Item__c (before update) {
    for(Line_Item__c a : trigger.new)
    {
        if(a.Quantity__c == 20)
        {
            a.Unit_Price__c = a.Unit_Price__c*2;
        }
    }
}