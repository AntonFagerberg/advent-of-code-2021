class Day01
  def thing(input)
    incs = 0

    for i in 1...input.size
      incs += 1 if input[i - 1].to_i < input[i].to_i
    end

    incs
  end
end
