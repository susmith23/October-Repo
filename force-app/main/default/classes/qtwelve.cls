public class qtwelve {
    public void test(Integer n)
    {
        for(Integer i=1;i<=n;i++)
        {
            for(Integer j=1;j<=n;j++)
            {
                if(i==1 || i==n || j==1 || j==n)
                    System.debug('#');
                else
                    System.debug(' ');
            }
        }
    }
}