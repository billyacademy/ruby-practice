def divide(a, b)
  ans = 0
  numerator = a.abs
  until numerator < b
    numerator -= b.abs
    ans += 1
  end
  if (a < 0 && b < 0) || (a > 0 && b > 0)
    ans
  else
    ans = 0 - ans
    ans
  end
end


puts divide(-3100078, 5)
