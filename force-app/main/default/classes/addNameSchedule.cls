public class addNameSchedule implements Schedulable {
    
    public void execute(SchedulableContext sc)
    {
        Database.executeBatch(new appendAccName());
    }

}