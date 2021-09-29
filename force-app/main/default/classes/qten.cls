public class qten {
    public void test()
    {
        Integer []arr = new Integer[] {15,14,19,21,25,45,37,55};
            for(Integer i=0;i<=7;i++) {
                if(arr[i] > arr[0] && arr[i] > arr[6])
                {
                    System.debug(arr[i]);
                }
            }
    }
}