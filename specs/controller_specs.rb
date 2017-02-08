require('minitest/autorun')
require('minitest/rg')
require("../die.rb")
require("../counter.rb")
require("../player.rb")
require("../board.rb")
require("../controller.rb")


class TestController < Minitest::Test

def setup()

  @player1 = Player.new("Chris", @counter1 = Counter.new("blue"), @die1 = Die.new(6))
  @player2 = Player.new("Robert", @counter2 = Counter.new("red"), @die2 = Die.new(6))

    @snakes = [
      {
        head: 20,
        tail: 5
        },
        {
          head: 50,
          tail: 30
        },
        {
          head: 70,
          tail: 60
        },
        {
          head: 80,
          tail: 60
        }

      ]

    @ladders = [
      {
        bottom: 14,
        top: 22
      },
      {
        bottom: 24,
        top: 42
      },
      {
        bottom: 54,
        top: 62
      },
      {
        bottom: 74,
        top: 92
      }
    ]
  @squares = 100

  @board = Board.new(@squares, @snakes, @ladders)

  @controller = Controller.new(@player1, @player2, @board)

end

def test_player1_and_player2_values
  assert_equal("Chris", @controller.player1.name)
  assert_equal("Robert", @controller.player2.name)
end

def test_get_current_player
  assert_equal(@player1, @controller.get_current_player(@player2))
end

# def test_players_change
#   for i in (1..100) do
#     @controller.take_turn()
#   end
# end

def test_players_change
    @controller.take_turn()
end

def update_position_of_current_player

  
end


# def test_update_position_of_current_player
 
# end




end
