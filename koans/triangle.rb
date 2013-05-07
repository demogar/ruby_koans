# Triangle Project Code.

# dgarcia
# --
# http://ruby-doc.org/core-2.0/Array.html#method-i-assoc
def triangle(a, b, c)
  sides_array = [a, b, c]
  unique_array = sides_array.uniq

  # no zeros
  raise TriangleError, "Zero?" if sides_array.include?(0)
  # no negative
  raise TriangleError, "Negative?" if sides_array.min < 0
  # sum of two, less than the other
  raise TriangleError, "Wrong sizes?" if (a+b <= c) || (a+c <= b) || (b+c <= a)

  # Which triangle it is?
  unique_array.size === 1 ? :equilateral : (unique_array.size === 2 ? :isosceles : :scalene)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
