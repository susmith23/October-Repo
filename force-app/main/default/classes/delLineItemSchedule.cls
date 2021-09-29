public class delLineItemSchedule implements Schedulable{
    
    public void execute(SchedulableContext sc)
    {
        Database.executeBatch(new delLineItem());
    }

}