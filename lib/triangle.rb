require "pry"
class Triangle
  attr_accessor :a, :b, :c
  
  def initialize (a, b, c)
    # @a = a
    # @b = b
    # @c = c
    @sides = [a, b, c]
    @sides.sort!
  end

  def kind
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "raises an error for triangles"
    end
  end

end
# binding.pry
