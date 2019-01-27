require_relative 'player'
require_relative 'computer'

class Game

  GAME_RULES = { :Rock => { :Rock => :Draw,
                            :Paper => false, 
                            :Scissors => true },
                 :Paper => { :Rock => true, 
                            :Paper => :Draw, 
                            :Scissors => false },
                :Scissors => { :Rock => false, 
                            :Paper => true,
                            :Scissors => :Draw }
                }
  attr_reader :player1_choice, :player2_choice
  def initialize(player1, player2)
    @player1_choice = player1.choice
    @player2_choice = player2.choice
  end

  def winner
    GAME_RULES[@player1_choice][@player2_choice] 
  end

end
