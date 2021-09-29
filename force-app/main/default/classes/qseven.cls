public class qseven {
    public void rev()
    {
        Integer []arr = new Integer[]{1,2,3,4,5,6,7,8,9,10};
            System.debug('Original Array:');
        for(Integer i=0;i<arr.size();i++)
        {
            System.debug(arr[i]);
        }
        System.debug('Reversed Array:');
        for(Integer i=arr.size()-1;i>=0;i--)
        {
            System.debug(arr[i] + ' ');
        }
    }
}