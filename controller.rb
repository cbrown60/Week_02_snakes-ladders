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
#puts "#{@current_player.name} threw a #{throw_value}"


end



end
