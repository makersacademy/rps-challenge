require_relative 'player'
class Game

  attr_reader :player_1, :player_2

  def initialize(playerClass)
    @player_1 = initialize_player playerClass
    @player_2 = initialize_player playerClass
  end

  def initialize_player(playerClass)
    player = playerClass.new
  end

  def player_1_win?
    if player_1.last_played == player_2.last_played
       'Draw'
    else
      case player_1.last_played
        when 1 then player_1_rock
        when 2 then player_1_paper
        when 3 then player_1_scissor
      end
    end
  end

  def player_1_rock
    player_2.last_played == 3 ? 'Player 1 win' : 'Player 2 win'
  end

  def player_1_paper
    player_2.last_played == 1 ? 'Player 1 win': 'Player 2 win'
  end

  def player_1_scissor
    player_2.last_played == 2 ? 'Player 1 win' : 'Player 2 win'
  end

  def reset_last_played
    player_1.reset_last_play
    player_2.reset_last_play
  end
end