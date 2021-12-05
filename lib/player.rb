class Player
  RPS = ['rock', 'paper', 'scissors'].freeze
  attr_reader :name, :winner

  def initialize(name)
    @name = name
    @winner = nil
  end

  def winner_with_rock(bot_choice)
    choose_rock
    case bot_choice
    when 'scissors' then @winner = @name
    when 'paper' then @winner = 'Bot'
    else
      @winner = "Nobody"
    end
  end

  def winner_with_paper(bot_choice)
    choose_paper
    case bot_choice
    when 'rock' then @winner = @name
    when 'scissors' then @winner = 'Bot'
    else
      @winner = "Nobody"
    end
  end

  def winner_with_scissors(bot_choice)
    choose_scissors
    case bot_choice
    when 'paper' then @winner = @name
    when 'rock' then @winner = 'Bot'
    else
      @winner = "Nobody"
    end
  end

  def choose_rock
    RPS.first
  end

  def choose_paper
    RPS[1]
  end

  def choose_scissors
    RPS.last
  end
end
