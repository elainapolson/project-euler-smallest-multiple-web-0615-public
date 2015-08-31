# Implement your procedural solution here!

def smallest_multiple(divisor)
  answer = 1

  until is_divisible(answer, divisor)
    answer += 1
  end

  return answer
    
end

def is_divisible(answer, divisor)
  divisor.downto(1) do |x|
    if answer % x != 0
      return false
    end
  end
  return true
end