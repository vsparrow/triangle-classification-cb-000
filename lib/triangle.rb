class Triangle
  # write code here
  attr_accessor :side1,:side2,:side3
  def initialize(side1,side2,side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end

  def kind
  # The sum of the lengths of any two sides of a triangle always exceeds the length of the third side.
  # This is a principle known as the triangle inequality.
  #   Further, each side must be larger than 0.
    if @side1 <= 0 || @side2 <=0 || @side3<=0
      raise TriangleError
    end #if

    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 ||  @side2 + @side3 <= @side1
      raise TriangleError
    end #if
    triangle  = nil
    if @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      triangle= :scalene
    elsif @side1 == @side2 && @side2 == @side3
      triangle = :equilateral
    # elsif @side1 == @side2 && @side1 != @side3 ||  @side1 == @side3 && @side2 != @side3
    elsif @side1 == @side3 || @side1 == @side2 || @side2 == @side3
      triangle= :isosceles
    end #if
    triangle
  end #kind

end  #Triangle

class TriangleError < StandardError

end #TriangleError
