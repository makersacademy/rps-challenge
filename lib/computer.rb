class Computer
  attr_reader :name, :selection

  def initialize(name)
    @name = name
    @selection = nil
  end

  def choice(seed = nil)
    if seed != nil
      srand(seed)
    end

    @selection = ['rock', 'paper', 'scissors'].sample
  end
end
