public class AccountProcessor {
    @future
    public static void countContacts(Set<Id> setId)
    {
        List<Account> listAccount = [Select Id, Number_of_Contacts__c ,(Select Id from Contacts) from Account Where Id IN :setId];
        for(Account acc : listACcount)
        {
            List<Contact> listContact = acc.Contacts;
            acc.Number_of_Contacts__c = listContact.size();
            System.debug('this is added from VS');
            System.debug('this is added from VS');
        }
        update listAccount;
    }

}