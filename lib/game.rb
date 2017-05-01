require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player_1, :player_2, :game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.new_game(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def check_winner(player_1_choice, player_2_choice)
    win_logic = { 'Scissors' => 'Paper',
      'Paper' =>  'Rock',
      'Rock' => 'Scissors'}
      if player_1_choice == player_2_choice
        :draw
      elsif win_logic[player_1_choice] == player_2_choice
        :player_1_win
      else
        :player_2_win
      end
  end


end
