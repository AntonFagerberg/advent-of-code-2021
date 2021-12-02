require 'minitest/autorun'
require_relative '../lib/day_01'

class Day01Test < Minitest::Test
  def test_part1example
    assert_equal 7, Day01.new.part1(File.readlines('input/day01/example1'))
  end

  def test_part1
    assert_equal 1226, Day01.new.part1(File.readlines('input/day01/input'))
  end
  
  def test_part2example
    assert_equal 5, Day01.new.part2(File.readlines('input/day01/example1'))
  end

  def test_part2
    assert_equal 1252, Day01.new.part2(File.readlines('input/day01/input'))
  end
end
