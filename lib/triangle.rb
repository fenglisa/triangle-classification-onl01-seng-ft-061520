class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = []
    @sides
  end
  
  def kind
    :equilateral if side_1 == side_2 && side_1 == side_3
    :isosceles if side_1 == side_2 || side_1
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end
