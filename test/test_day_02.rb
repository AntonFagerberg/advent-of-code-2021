# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/day_02'

class Day02Test < Minitest::Test
  def test_part1example
    assert_equal 150, Day02.new.part1(File.readlines('input/day02/example1'))
  end

  def test_part1
    assert_equal 1_499_229, Day02.new.part1(File.readlines('input/day02/input'))
  end

  def test_part2example
    assert_equal 900, Day02.new.part2(File.readlines('input/day02/example1'))
  end

  def test_part2
    assert_equal 1_340_836_560, Day02.new.part2(File.readlines('input/day02/input'))
  end
end
