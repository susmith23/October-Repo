public class conHandler {
    
    public static void updatePrimary(List<Contact> listCon)
    {
        Map<Id,String> mapOfAccountIdContactName = new map<Id,String>();
        if(listCon.size() > 0) { 
        for(Contact conRec : listCon)
        {
            String contactName = conRec.FirstName + conRec.LastName;
            mapOfAccountIdContactName.put(conRec.AccountId , contactName);
        }
        }
        List<Contact> ContactRecords = new List<Contact>();
        if(mapOfAccountIdContactName.size() > 0 && listCon.size() > 0)
        {
            for(Contact conRecord : [select id , name ,Primary_Contact__c from Contact where AccountId in : mapOfAccountIdContactName.keyset() and Primary_Contact__c = true 
                                     and Id not in : listCon ]) {
                                         ContactRecords.add(conRecord);
                                     }
        }
        List<Account> accRecords = new List<Account>();
        if(mapOfAccountIdContactName.size() > 0)
        {
            for(Account accRec :[select id , Primary_contact_Name__c from Account where id in :mapOfAccountIdContactName.keyset()])
            {
                accRec.Primary_contact_Name__c = mapOfAccountIdContactName.get(accRec.id);
                accRecords.add(accRec);
                
            }
        }
        if(accRecords.size() >0)
        {
            update accRecords;
        }
        if(ContactRecords.size() > 0)
        {
            update ContactRecords;
        }
    }    
}