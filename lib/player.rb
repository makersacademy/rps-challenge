class Player
  def initialize(name, bot: false)
    @name = name
    @choice = nil
    @bot = bot
    @wins = 0
  end

  def name
    @name
  end

  def choice=(choice)
    @choice = choice
  end

  def choice 
    @choice
  end

  def bot?
    @bot
  end

  def assign_rand
    @choice = ['rock', 'paper', 'scissors'].sample
  end

  def add_win
    @wins += 1
  end

  def wins
    @wins
  end

end