require('minitest/autorun')
require('minitest/rg')
require("../die.rb")
require("../counter.rb")
require("../player.rb")


class TestPlayer < Minitest::Test

  def setup()
    @player1 = Player.new(@counter1 = Counter.new("blue"), @die1 = Die.new(6))
    @player2 = Player.new(@counter2 = Counter.new("red"), @die2 = Die.new(6))
     

  end

def test_counter_colour
assert_equal("blue", @player1.counter.get_colour)
end

  def test_die_number
    if @player2.throw_die
      test_result = true
    else
      test_result = false
    end

    assert_equal(true, test_result)
      
  end



end
