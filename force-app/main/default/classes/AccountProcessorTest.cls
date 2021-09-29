@IsTest
public class AccountProcessorTest {
    public static testmethod void AccountProcessorTest() 
    {
        Account a = new Account();
        a.Name = 'Test Account';
        a.AccountNumber = '12345786';
        Insert a;
        
        Contact con = New Contact();
        con.FirstName = 'abc';
        con.LastName = 'xyz';
        con.AccountId = a.Id;
        
        Set<Id> setofAccId = new Set<ID>();
        setofAccId.add(a.Id);
        
        Test.startTest();
        	AccountProcessor.countContacts(setofAccId);
        Test.stopTest();
        
        Account Acc = [Select Number_of_Contacts__c from Account where Id = :a.Id LIMIT 1];
        System.assertEquals(Integer.valueOf(Acc.Number_of_Contacts__c),0);
    }
    
}