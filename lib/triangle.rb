class Triangle

  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def greater_than_zero
    a > 0 && b > 0 && c > 0
  end

  def triangle_inequality
    a + b > c && b + c > a && a + c > b
  end

  def raise_error
    raise TriangleError unless greater_than_zero && triangle_inequality
  end

  class TriangleError < StandardError
  end

end
