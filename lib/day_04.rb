# frozen_string_literal: true

class Day04
  def parse(input)
    draws = input[0].split(',')
    new_board = []
    boards = [].push(new_board)

    input.drop(2).each do |e|
      if e == ''
        new_board = []
        boards.push(new_board)
      else
        row = e.split(' ').filter { |n| n != ' ' }
        new_board.push(row)
      end
    end

    [draws, boards]
  end

  def bingo?(board)
    row_bingo = board.any? do |row|
      row.all? { |nr| nr.start_with? 'X' }
    end

    col_bingo = false

    board.each_index do |i|
      col_bingo = true if board.all? { |e| e[i].start_with? 'X' }
    end

    row_bingo or col_bingo
  end

  def part1(input)
    parts = parse(input)
    boards = parts[1]

    parts[0].each do |e|
      boards = boards.map do |board|
        board.map do |row|
          row.map { |nr| nr == e ? "X#{nr}" : nr }
        end
      end

      boards.each do |board|
        next unless bingo?(board)

        unmarked = board.map do |row|
          row.filter { |nr| !nr.start_with? 'X' }.map(&:to_i)
        end

        return unmarked.flatten.sum * e.to_i
      end
    end
  end

  def part2(input)
    parts = parse(input)
    boards = parts[1]

    parts[0].each do |e|
      not_bingo = boards.filter { |board| !bingo? board }

      boards = not_bingo.map do |board|
        board.map do |row|
          row.map { |nr| nr == e ? "X#{nr}" : nr }
        end
      end

      next unless boards.size == 1

      boards.each do |board|
        next unless bingo?(board)

        unmarked = board.map do |row|
          row.filter { |nr| !nr.start_with? 'X' }.map(&:to_i)
        end

        return unmarked.flatten.sum * e.to_i
      end
    end
  end
end
