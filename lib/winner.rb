class Winner
  attr_reader :winner

  def initialize(player)
    @player = player
    @winner = nil
  end

  def with_rock(bot_choice)
    @player.choose_rock
    case bot_choice
    when 'scissors' then @winner = @player.name
    when 'paper' then @winner = 'Bot'
    else
      @winner = "Nobody"
    end
  end

  def with_paper(bot_choice)
    @player.choose_paper
    case bot_choice
    when 'rock' then @winner = @player.name
    when 'scissors' then @winner = 'Bot'
    else
      @winner = "Nobody"
    end
  end

  def with_scissors(bot_choice)
    @player.choose_scissors
    case bot_choice
    when 'paper' then @winner = @player.name
    when 'rock' then @winner = 'Bot'
    else
      @winner = "Nobody"
    end
  end
end