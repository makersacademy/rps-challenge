require_relative 'computer.rb'
require_relative 'player.rb'

class Game

  include Computer

  def initialize
    @rock_hash = {:rock=>"Draw", :paper=>"Computer wins!", :scissors=>"You win!"}
    @paper_hash = {:rock=>"You win!", :paper=>"Draw", :scissors=>"Computer wins!"}
    @scissors_hash = {:rock=>"Computer wins!", :paper=>"You win!", :scissors=>"Draw"}
  end

  def result(player)
    opponent = comp_move
    if player.move.include?("rock")
      player.move.clear
      @rock_hash[opponent]
    elsif player.move.include?("paper")
      player.move.clear
      @paper_hash[opponent]
    else
      player.move.clear
      @scissors_hash[opponent]
    end
  end

end
