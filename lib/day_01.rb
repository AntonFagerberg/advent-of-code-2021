# frozen_string_literal: true

class Day01
  def part1(input)
    incs = 0

    (1...input.size).each do |i|
      incs += 1 if input[i - 1].to_i < input[i].to_i
    end

    incs
  end

  def part2(input)
    incs = 0

    (3...input.size).each do |i|
      sum1 = input[i - 3].to_i + input[i - 2].to_i + input [i - 1].to_i
      sum2 = input[i - 2].to_i + input[i - 1].to_i + input[i].to_i
      incs += 1 if sum1 < sum2
    end

    incs
  end
end
