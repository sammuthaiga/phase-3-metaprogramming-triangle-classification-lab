class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
  end
  
  def kind
  raise TriangleError if invalid?
  return :equilateral if a == b && b == c
  return :isosceles if a == b || b == c || a == c
  :scalene
  end
  
  private
  
  def invalid?
  [a, b, c].min <= 0 || (a + b <= c) || (a + c <= b) || (b + c <= a)
  end
  
   class TriangleError < StandardError; end
   end