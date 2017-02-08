require('minitest/autorun')
require('minitest/rg')
require ('../die.rb')

class TestDie < Minitest::Test

  def setup()
    @die = Die.new(6)
  end

  def test_die_is_created
    puts @die.throw
  end

end

