public class task4cls {
    public List<Line_Item__c> lineItem { get; set; }
    public task4cls() {
        lineItem = [ Select Name, Merchandise__r.Name, Invoice__r.Name from Line_item__c ];
    }

    public void save() {
        update lineItem;
    }
}