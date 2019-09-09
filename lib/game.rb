class Game
  def initialize(player, rivalbot)
    @players = [player, rivalbot]
  end

  def player
    @players.first
  end

  def rivalbot
    @players.last
  end

  def select_winner
    case [player.player_choice, rivalbot.robo_choice]
    when ['paper', 'rock'], ['scissors', 'paper'], ['rock', 'scissors']
      'You win!'
    when ['rock', 'rock'], ['paper', 'paper'], ['scissors', 'scissors']
      'You tied!'
    else
      'Rivalbot wins!'
    end
  end
end
