public with sharing class accCon37 {
    public list<Account> displayAccounts {get; set;}
    public accCon37(){
        displayAccounts = [Select Id, Name, (Select Id, Name From Contacts) from Account LIMIT 10];
    }
}