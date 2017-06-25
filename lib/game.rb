require "./lib/player1.rb"
require "./lib/player2.rb"

class Game
  
  attr_reader :player1, :player2
  
  OPTIONS = [:rock, :scissors, :paper]
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  
  def self.create_new_game(player1, player2)
    @game = Game.new(player1, player2)
  end
  
  def self.game_instance
    @game
  end
  
  def index_in_options(player1_current_choice, player2_current_choice)
    @index_player1 = OPTIONS.index(player1_current_choice)
    @index_player2 = OPTIONS.index(player2_current_choice)
  end
  
  def compare_index(index1, index2)
    if index1 == index2
      0
    elsif (index1 - index2) == -1 || (index1 - index2) == 2
      1
    else
      2
    end
  end
  
  def result_rps(player1_current_choice, player2_current_choice)
    index_in_options(player1_current_choice, player2_current_choice)
    compare_index(@index_player1, @index_player2)
  end
  
  # def result(player1_current_choice, player2_current_choice)
  #   @result = rules(player1_current_choice, player2_current_choice)
  #   if @result.zero?
  #     "It's a tie!"
  #   elsif @result == 1
  #     "Player 1 wins"
  #   else
  #     "Player 2 wins"
  #   end
  # end
  
end
