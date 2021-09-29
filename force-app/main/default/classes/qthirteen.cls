public class qthirteen {
    public static void test(Invoice__c a) {
        List<String> string1 = new List<String>{'open', 'closed', 'closed', 'open', 'open', 'closed', 'closed', 'open', 'closed', 'open'};
            
            for(Integer i = 0; i<string1.size(); i++) {
                a = new Invoice__c(Status__c = string1.get(i));
                insert a;
            }        
        List<Invoice__c> invoiceNamesList = [Select Name From Invoice__c];
        
        for(Integer i = 0; i<invoiceNamesList.size(); i++) {
            System.debug(invoiceNamesList.get(i));
        }
                updation();
    }
        public static void updation() {
        List<Invoice__c> updation = [Select Value__c From Invoice__c];
        for(Invoice__c b: updation) {
            b.Value__c = 100;
        }
        update updation;        
        for(Invoice__c c: updation) {
            System.debug(c);
        }
    }
}