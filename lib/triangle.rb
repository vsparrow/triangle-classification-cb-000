class Triangle
  # write code here

  # Write a Triangle class that accepts three arguments on initialization.
  # Each argument is a length of one of the three sides of the triangle.
  def initialize(side1,side2,side3)
    @a=side1
    @b=side2
    @c=side3
  end

  def kind  #returns, as a symbol,  type.  # :equilateral  # :isosceles # :scalene
      if @a == 0 || @b == 0 || @c == 0
        raise TriangleError
      end
      if (@a + @b <= @c) or (@a + @c <= @b) or (@b + @c <= @a)
        raise TriangleError
      end

      triangle_type = nil
      triangle_type = :isosceles  if @a == @b || @b == @c || @a == @c
      triangle_type = :equilateral if @a == @b && @b == @c
      triangle_type = :scalene if @a != @b && @b != @c && @c != @a

      triangle_type
  end


  # The kind method should raise a custom error, TriangleError if the triangle is invalid.

end


class TriangleError < StandardError
  # The sum of the lengths of any two sides of a triangle always exceeds the length of the third side.
  #  This is a principle known as the triangle inequality.
  #
  #  Further, each side must be larger than 0.
end
