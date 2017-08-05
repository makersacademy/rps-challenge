require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player1, :player2, :choices, :player1_weapon, :player2_weapon

  WIN_COMBINATION =  [["Rock","Scissors"],["Scissors","Paper"],["Paper","Rock"]]


  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    @choices = []
    @player1_weapon = nil
    @player2_weapon = nil
  end

  def self.create(player1,player2)
    @game = Game.new(player1,player2)
  end

  def self.instance
    @game||= Game.new
  end

  def calc_result
    @player1_weapon = @player1.weapon
    @player2_weapon = @player2.generate_weapon
    @choices = [@player1_weapon,@player2_weapon]
    if @choices[0] == @choices[1]
       "Draw"
    elsif WIN_COMBINATION.include? @choices
       "#{@player1.name} Wins!"
    else
       "Computer Wins!"
     end
  end
end
