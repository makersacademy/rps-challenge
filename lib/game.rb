class Game
  attr_reader :winner, :player, :bot

  def initialize(player, bot)
    @player = player
    @bot = bot
    @winner = nil
  end

  def winner_with_rock(bot_choice)
    @player.choose_rock
    case bot_choice
    when 'scissors' then player_wins
    when 'paper' then bot_wins
    else
      @winner = "Nobody"
    end
  end

  def winner_with_paper(bot_choice)
    @player.choose_paper
    case bot_choice
    when 'rock' then player_wins
    when 'scissors' then bot_wins
    else
      @winner = "Nobody"
    end
  end

  def winner_with_scissors(bot_choice)
    @player.choose_scissors
    case bot_choice
    when 'paper' then player_wins
    when 'rock' then bot_wins
    else
      @winner = "Nobody"
    end
  end

  def player_wins
    @winner = @player.name
    @player.add_point
  end

  def bot_wins
    @winner = 'Bot'
    @bot.add_point
  end
end
