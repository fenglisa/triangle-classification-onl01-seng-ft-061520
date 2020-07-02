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
    if @sides.max < (@sides.min(2)[0] + @sides.min(2)[1]) && @sides.all?{|side| side != 0}
      if @sides.uniq.length == 1
        return :equilateral
      elsif @sides.uniq.length == 2
        return :isosceles
      elsif @sides.uniq.length == 3
        return :scalene
      end
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end
