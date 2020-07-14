class Computer
  def selection(seed = nil)
    if seed != nil
      srand(seed)
    end

    ['rock', 'paper', 'scissors'].sample
  end
end
