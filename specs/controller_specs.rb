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
          head: 13,
          tail: 8
        }

      ]

    @ladders = [
      {
        bottom: 4,
        top: 17
      },
      {
        bottom: 12,
        top: 23
      }

    ]
  @squares = 25

  @board = Board.new(@squares, @snakes, @ladders)

  @controller = Controller.new(@player1, @player2, @board)

end


def test_player1_and_player2_values
assert_equal("Chris", @controller.player1.name)
assert_equal("Robert", @controller.player2.name)
end


end
