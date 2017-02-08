class Controller

attr_reader :player1, :player2

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
    @current_player = @player1
  end

def take_turn
  @current_player = get_current_player(@current_player)
  puts "#{@current_player.name} throws die value = #{@current_player.throw_die}"
end


def get_current_player(last_player)


  if last_player == @player1
    @current_player = @player2
  else
    @current_player = @player1
  end

  return @current_player


end




end
