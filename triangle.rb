# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def illegal_triangle?(a,b,c)
  return false if a <= 0 or b <=0 or c <= 0
  return false if (a+b<=c) or (a+c<=b) or (c+b<=a)
  
  return true
end

  
def triangle(a, b, c)
  raise TriangleError unless illegal_triangle?(a,b,c)
  
  if (a == b) and (b == c)
    return :equilateral
  elsif (a == b) or (a == c) or (b ==c)
    return :isosceles
  else
    return :scalene
  end
  
end

class TriangleError < StandardError

end
