class Triangle
  attr_accessor :side_1, :side_2, :side_3, :equilateral, :isosceles, :scalene
  
  def initialize()
    
  end
  
  def kind
    
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end
