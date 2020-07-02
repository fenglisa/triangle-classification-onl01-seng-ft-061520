require "pry"
class Triangle
  attr_accessor :side_1, :side_2, :side_3, :sides
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = []
    @sides << side_1 << side_2 << side_3
  end
  
  def kind
    :equilateral if @sides.uniq.length == 1
    :isosceles if @sides.uniq.length == 2
    :scalene if @sides.uniq.length == 3

  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end
