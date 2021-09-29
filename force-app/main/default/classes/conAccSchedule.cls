public class conAccSchedule implements Schedulable {
    
    public void execute(SchedulableContext sc)
    {
        Database.executeBatch(new countConAcc());
    }

}