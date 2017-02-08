require('minitest/autorun')
require('minitest/rg')
require ('../counter.rb')

class TestCounter < Minitest::Test

  def setup()
    @counter1 = Counter.new("blue")
    @counter2 = Counter.new("red")
  end


  def test_counter_colour
    assert_equal("blue", @counter1.get_colour)
    assert_equal("red", @counter2.get_colour)
  end

end

