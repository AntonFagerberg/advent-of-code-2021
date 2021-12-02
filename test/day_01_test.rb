require 'minitest/autorun'
require_relative '../lib/day_01'

class Day01Test < Minitest::Test
  def test_part1example
    assert_equal Day01.new.thing(File.readlines('input/day01/example1')), 7
  end

  def test_part1
    assert_equal Day01.new.thing(File.readlines('input/day01/input')), 1226
  end
end
