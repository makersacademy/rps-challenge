class Player
  attr_reader :name, :wins, :type, :choice

  def initialize(name, type)
    @name = name
    @wins = 0
    @type = type
  end

  def log(choice)
    @choice = choice
  end

  def win
    @wins += 1
  end

  def random_choice
    @choice = Bot.play
  end
end
