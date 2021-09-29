public class qnine {
    public void cars(Integer a, Integer b, Integer c)
    {
        Integer wheels = a/4;
        Integer body = b;
        Integer people = c/2;
        
        if(wheels>body)
            System.debug(wheels);
        else if(body>people)
            System.debug(body);
        else
            System.debug(people);
    }
}