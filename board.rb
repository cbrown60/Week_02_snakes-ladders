class Board

 def initialize(number_of_squares, snakes, ladders) 
  @number_of_squares = number_of_squares
  @snakes = snakes
  @ladders = ladders
end

def number_of_squares_on_board
  return @number_of_squares
end

def get_snake_head_squares
 snake_head_squares = []
 for head_squares in @snakes 
 
 snake_head_squares.push(head_squares[:head])
 end
 return snake_head_squares


end 

  
  def get_snake_tail_squares
   snake_tail_squares = []
   for tail_squares in @snakes 
   
   snake_tail_squares.push(tail_squares[:tail])
   end
   return snake_tail_squares

  end

  def get_ladder_top_squares
   ladder_top_squares = []
   for top_squares in @ladders 
   
   ladder_top_squares.push(top_squares[:top])
   end
   return ladder_top_squares

  end

  def get_ladder_bottom_squares
   ladder_bottom_squares = []
   for bottom_squares in @ladders 
   
   ladder_bottom_squares.push(bottom_squares[:bottom])
   end
   return ladder_bottom_squares

  end

end