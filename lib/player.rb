class Player

  attr_reader :list, :choice, :name

  def initialize(name="computer")
    @name = name
    @list = ["rock", "paper", "scissors"]
    @choice = nil
  end

  def choose(choice=@list.sample)
    @choice = choice
  end

end
