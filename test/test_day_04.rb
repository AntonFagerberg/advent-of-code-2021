# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/day_04'

class Day03Test < Minitest::Test
  def test_part1example
    assert_equal 4512, Day04.new.part1(File.readlines('input/day04/example1', chomp: true))
  end

  def test_part1
    assert_equal 50_008, Day04.new.part1(File.readlines('input/day04/input', chomp: true))
  end

  def test_part2example
    assert_equal 1924, Day04.new.part2(File.readlines('input/day04/example1', chomp: true))
  end

  def test_part2
    assert_equal 17_408, Day04.new.part2(File.readlines('input/day04/input', chomp: true))
  end
end
