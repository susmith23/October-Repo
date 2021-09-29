@isTest
public class TestUpdationHandler {
    public static testmethod void handlerTest()
    {
        Test.startTest();
        Account a = new Account();
        a.Name = 'Testing';
        a.Amount__c = 150;
        a.CustomerType__c = 'Big';
        a.Phone = '1234567890';
        a.Email__c = 'abc@xyz.com';
        insert a;
        Account b = new Account();
        b.Name = 'Testing1';
        b.Amount__c = 50;
        b.CustomerType__c = 'Small';
        b.Phone = '9999999989';
        b.Email__c = 'abc1@xyz.com';
        insert b;
        Test.stopTest();
        
    }

}