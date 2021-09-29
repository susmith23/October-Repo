public class q8Handler {
    public static void updateBin(Set<Id> competitorsId) {
        List<Competitor__c> compList = [Select Id From Competitor__c Where Id IN :competitorsId];
        
        for(Competitor__c a: compList) {
            a.Undeleted__c = true;
        }
        update compList;
    }
}