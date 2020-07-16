class Computer
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def selection(seed = nil)
    if seed != nil
      srand(seed)
    end

    ['rock', 'paper', 'scissors'].sample
  end
end
