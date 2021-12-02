class Day02
  def part1(input)
    x = 0
    y = 0
    
    input.each { |e| 
      parts = e.split(' ') 
      dir = parts[0]
      value = parts[1].to_i
      
      x += value if dir == 'forward'
      y += value if dir == 'down'
      y -= value if dir == 'up'
    }
    
    x * y
  end
  
  def part2(input)
    x = 0
    y = 0
    aim = 0
    
    input.each do |e| 
      parts = e.split(' ') 
      dir = parts[0]
      value = parts[1].to_i
      
      aim += value if dir == 'down'
      aim -= value if dir == 'up'
      if dir == 'forward'
        x += value 
        y += aim * value
      end
    end
    
    x * y
  end
end