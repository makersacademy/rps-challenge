require 'pry'

class Game

  WINNING_MOVES = { 'Scissors' => ['Paper', 'Lizard'],
                    'Paper' => ['Rock', 'Spock'],
                    'Rock' => ['Scissors', 'Lizard'],
                    'Lizard' => ['Paper', 'Spock'],
                    'Spock' => ['Scissors', 'Rock'] }

  attr_reader :player_1, :player_2, :current_player
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end
  
  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def switch_turns
    @current_player == player_1 ? @current_player = player_2 : @current_player = player_1
  end

  def pick_choice(choice)
    current_player.choose(choice)
  end

  def player_choice(player)
    player.choice
  end

  def check_winner
    if tie?
      nil
    elsif player_1_win?
      player_1
    else
      player_2
    end
  end

  def reset
    player_1.choose nil
    player_2.choose nil
  end

  private

    def tie?
      player_choice(player_1) == player_choice(player_2)
    end

    def player_1_win?
      WINNING_MOVES[player_choice(player_1)].include? player_choice(player_2)
    end

end

