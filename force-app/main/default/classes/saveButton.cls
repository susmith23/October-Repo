public class saveButton {
    public String accountName{ get; set; }
    public String contactName{ get; set; } 

    public void save() {
        Account acc = new Account();
        acc.Name = accountName;
        Contact con = new Contact();
        con.LastName = contactName;
        insert acc;
        insert con;
    }
}