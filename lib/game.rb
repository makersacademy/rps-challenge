require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player1, :player2, :choices

  WIN_COMBINATION =  [["Rock","Scissors"],["Scissors","Paper"],["Paper","Rock"]]



  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    @choices = []
  end

  def self.create(player1,player2)
    @game = Game.new(player1,player2)
  end

  def self.instance
    @game ||= Game.new
  end

  def calc_result
    @choices << @player1.weapon
    @choices <<@player2.generate_weapon
    return "Draw" if @player1.weapon == @player2.generate_weapon
    if WIN_COMBINATION.include?@weapon_choices
      return "#{@player1.name} Wins"
    else
      return "Computer wins"
    end
  end
end
