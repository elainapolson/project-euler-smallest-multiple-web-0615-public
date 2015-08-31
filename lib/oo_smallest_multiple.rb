# Implement your object-oriented solution here!

class SmallestMultiple
  
  def initialize(divisor)
    @divisor = divisor
    @answer = 1
  end

  def find_smallest_multiple
    until is_divisible(@answer, @divisor)
      @answer += 1
    end
  end

  def is_divisible(answer, divisor)
    collect_values = []
    divisor.downto(1) do |x|
      if answer % x != 0
        collect_values << false
      end
    end
    if collect_values.include?(false)
      false
    else
      true
    end
  end

  def lcm
    find_smallest_multiple
    return @answer
  end

end
