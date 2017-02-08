class Player 
  attr_reader :counter 

  def initialize (counter, die)
    @counter = counter
    @die = die
    @counter_position = 1
    
  end

def throw_die
  
 @result = @die.throw 

end



end