require "pry"
class Triangle
  attr_accessor :one, :two, :three
  
  def initialize one, two, three
    @one = one
    @two = two
    @three = three
  end
  
  def invalid
    if one == 0 || two == 0 || three == 0
      raise TriangleError
    elsif one < 0 || two < 0 || three < 0
      raise TriangleError
    elsif one + two <= three || one + three <= two || two + three <= one
      raise TriangleError
    else
    end
  end

  def kind
    invalid
    if one == two && two == three
      :equilateral
    elsif one == two || one == three || two == three
      :isosceles
    elsif one != two || one != three || two != three
      :scalene
    else
    end
  end

  class TriangleError < StandardError

  end


end
