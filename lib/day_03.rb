# frozen_string_literal: true

class Day03
  def part1(input)
    count = one_or_zero(input)
    gamma = 0
    epsilon = 0

    count.reverse.each_with_index do |e, i|
      if e.to_i.negative?
        gamma += 2**i
      else
        epsilon += 2**i
      end
    end

    gamma * epsilon
  end

  def part2(input)
    oxygen = ->(v1, v2) { (v1 == 1 && v2 >= 0) || (v1.zero? && v2.negative?) }
    co2 = ->(v1, v2) { (v1 == 1 && v2.negative?) || (v1.zero? && v2 >= 0) }

    find(input, 0, oxygen) * find(input, 0, co2)
  end

  def find(input, index, keep)
    return input[0].to_i(2) if input.size == 1

    count = one_or_zero(input)
    input = input.select { |e| keep.call(e[index].to_i, count[index]) }

    find(input, index + 1, keep)
  end

  def one_or_zero(input)
    count = Array.new(input[0].size, 0)

    input.each do |e|
      e.split('').each_with_index { |v, i| count[i] += v == '1' ? 1 : -1 }
    end

    count
  end
end
