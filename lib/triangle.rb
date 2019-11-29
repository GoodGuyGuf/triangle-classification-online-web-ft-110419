require 'pry'
class Triangle


  def initialize(side_1, side_2, side_3)
    @sides = []
    @sides << side_1
    @sides << side_2
    @sides << side_3
  end

  def valid?
  sum = @sides[0] + @sides[1]
  sum_2 = @sides[1] + @sides[2]
    if sum < @sides[2] ||
      sum <= 0 ||
      @sides[2] < 0 ||
      @sides[0] == @sides[2] && @sides[1] > @sides[2] ||
      sum_2 < @sides[0]
      false
    else
      true
    end
  end

  def kind
    if valid?
      if @sides.uniq.length == 1
        return :equilateral
      elsif @sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
    puts "One or more conditions has not been met. Make sure that your triangle is valid."
    end
  end
end
