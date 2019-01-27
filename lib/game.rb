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
  attr_reader :players_choice, :computers_choice
  def initialize(player, computer = Computer.new)
    @players_choice = player.choice
    @computers_choice = computer.choice
  end

  def winner
    GAME_RULES[@players_choice][@computers_choice] 
  end

end
