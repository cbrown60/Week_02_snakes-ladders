require('minitest/autorun')
require('minitest/rg')
require("../board.rb")


class TestBoard < Minitest::Test

def setup()

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
end

def test_number_of_squares
  assert_equal(25, @board.number_of_squares_on_board)

end

def test_snake_head_location
  assert_equal([20, 13],@board.get_snake_head_squares)

  
end

def test_snake_tail_location
  assert_equal([5, 8],@board.get_snake_tail_squares)

  
end

def test_ladder_top_location
  assert_equal([17, 23],@board.get_ladder_top_squares)

  
end

def test_ladder_bottom_location
  assert_equal([4, 12],@board.get_ladder_bottom_squares)

  
end
end
