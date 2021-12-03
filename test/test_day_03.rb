# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/day_03'

class Day03Test < Minitest::Test
  def test_part1example
    assert_equal 198, Day03.new.part1(File.readlines('input/day03/example1', chomp: true))
  end

  def test_part1
    assert_equal 3_549_854, Day03.new.part1(File.readlines('input/day03/input', chomp: true))
  end

  def test_part2example
    assert_equal 230, Day03.new.part2(File.readlines('input/day03/example1', chomp: true))
  end

  def test_part2
    assert_equal 3_765_399, Day03.new.part2(File.readlines('input/day03/input', chomp: true))
  end
end
