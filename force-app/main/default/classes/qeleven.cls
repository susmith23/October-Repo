public class qeleven {
    public void test(String a, String b)
    {
        Integer count =0;
        for(Integer i=0;i<a.length();i++)
        {
            for(Integer j=0;j<b.length();j++)
            {
                if(a.substring(i, i+1) == b.substring(j,j+1))
                {
                    System.debug(count++);
                }
            }
        }
    }
}