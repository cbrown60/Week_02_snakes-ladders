class Player 
  attr_reader :counter, :name
  attr_accessor :counter_position

  def initialize (name, counter, die)
    @name = name
    @counter = counter
    @die = die
    @counter_position = 0
    
  end

def throw_die
  
 @throw_result = @die.throw 

end



end