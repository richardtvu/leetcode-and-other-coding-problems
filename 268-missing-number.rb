# 268. Missing Number
# https://leetcode.com/problems/missing-number/
# My favorite solution is the bit shifting manipulation because there's such an elegance about it
# XORing (^) 2 numbers will result in 0, since XOR means either-or, but not both or neither. e.g. 5^5 => 000.
# The order doesn't matter either, which is great!
# O(n) time and O(1) space.

def missing_numbers(nums)
  possibilities = (0..nums.size).reduce(:^)
  possibilities ^ nums.reduce(:^)
end

def test(array, missing_no)
  puts missing_numbers(array) == missing_no
end

test([9, 6, 4, 2, 3, 5, 7, 0, 1], 8)
test([0, 1], 2)
test([3, 0, 1], 2)
