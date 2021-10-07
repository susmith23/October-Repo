public with sharing class contactWire {
    
    @AuraEnabled(cacheable = true)
    public static List<Contact> searchContacts(String searchKey) {
        String key = '%' + searchKey + '%';
        return [
            Select Id, Name
            From Contact
            WHERE Name LIKE :key
            LIMIT 10
        ];
    }
}