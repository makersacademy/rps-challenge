class Computer

  attr_reader :name, :choice, :wins

  def initialize(name = "Siri")
    @name = name
    @choice = {}
    @wins = 0
  end

  def receive_reward
    @wins += 1
  end

  def receive_choice(choice)
    @choice = choice
  end

  def randomizer
    @choice = Game.options.sample
  end

end
