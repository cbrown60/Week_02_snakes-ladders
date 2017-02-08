class Die


  def initialize(sides)
    @sides = sides
  end

  def throw
    result = rand(1..@sides)
  end

end
