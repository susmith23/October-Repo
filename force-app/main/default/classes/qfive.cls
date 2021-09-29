public class qfive {
    public static final String Rock = 'R';
    public static final String Paper = 'P';
    public static final String Scissors = 'S';
    
    public void test(String player1, String player2)
    {
        System.debug('Player1 move:' +player1);
        System.debug('Player2 move:' +player2);
        if(player1.equals(player2))
            System.debug('It is a tie');       
    
        else if(player1.equals(Rock))
        {
           if(player2.equals(Scissors))
              System.debug('Player 1 Wins');
           else if(player2.equals(Paper))
              System.debug('Player 2 Wins');
         }
        else if(player1.equals(Paper))
        {
           if(player2.equals(Rock))
              System.debug('Player 1 Wins');
           else if(player2.equals(Scissors))
              System.debug('Player 2 Wins');
        }
        else if(player1.equals(Scissors))
        {
           if(player2.equals(Paper))
              System.debug('Player 1 Wins');
           else if(player2.equals(Rock))
              System.debug('Player 2 Wins');
        }
       else
          System.debug('Invalid user input');
}
}