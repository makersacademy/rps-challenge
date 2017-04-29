class Player
  attr_reader :name, :wins, :type, :last_choice

  def initialize(name, type)
    @name = name
    @wins = 0
    @type = type
  end

  def choice(choice)
    @last_choice = choice
  end

  def win
    @wins += 1
  end

  def random_choice
    @last_choice = Bot.play
  end
end
