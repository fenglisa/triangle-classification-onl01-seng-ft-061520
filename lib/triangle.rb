class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(attributes)
    sides = []
    attributes.each {|key, value| 
      self.send(("#{key}="), value)
      sides << value
    }
  end
  
  def kind
    :equilateral if side_1 == side_2 && side_1 == side_3
    :isosceles if side_1 == side_2 || side_1
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end
