class Controller

attr_reader :player1, :player2

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
    @current_player = @player2
    @throw_value = 0
  end

def take_turn
  @current_player = get_current_player(@current_player)
  @throw_value = @current_player.throw_die
  puts "#{@current_player.name} throws die value = #{@throw_value}"
  update_position_of_current_player(@current_player, @throw_value)

  #update_position_of_current_player(@current_player, 4)

end

def get_current_player(last_player)
  if last_player == @player1
    @current_player = @player2
  else
    @current_player = @player1
  end

  return @current_player
end


def update_position_of_current_player(current_player, throw_value)

@current_player.counter_position += throw_value 

if @current_player.counter_position >= @board.number_of_squares_on_board
  puts"Well done #{@current_player.name}! You've won the game"

self.end_game()

elsif @board.get_snake_head_squares.include?(@current_player.counter_position)

 i = @board.get_snake_head_squares.index(@current_player.counter_position)
 @current_player.counter_position = @board.get_snake_tail_squares[i]
 

puts "Ouch #{@current_player.name} - you landed on a snake! You've slid from #{@board.get_snake_head_squares[i]} to #{@current_player.counter_position}"

self.take_turn()

elsif @board.get_ladder_bottom_squares.include?(@current_player.counter_position)

i = @board.get_ladder_bottom_squares.index(@current_player.counter_position)
@current_player.counter_position = @board.get_ladder_top_squares[i]

puts "Hooray #{@current_player.name} - you landed on a ladder! You've climbed from #{@board.get_ladder_bottom_squares[i]} to #{@current_player.counter_position}"

self.take_turn()

else  

puts @current_player.counter_position
self.take_turn()

end


end

def end_game
  exit
end



end
