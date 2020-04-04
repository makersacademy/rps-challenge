require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1,player_2 = Computer.new("Computer"))
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = @player_1
    @logic = { Rock: :Scissors, Paper: :Rock, Scissors: :Paper }

  end

  def switch_turns
    if @player_1 == @current_turn
      @current_turn = @player_2
    else
      @current_turn = @player_1
    end
  end

  def check_player2_weapon?
    @player_2.weapon.is_a?Symbol
  end


  def winner_is
    p @player_1
    p @player_1.name
    if @player_1.weapon == @player_2.weapon
      "Draw"
    else @logic[@player_1.weapon] == @player_2.weapon ? @player_1.name : @player_2.name
    end
  end

  def self.create(p1,p2 = Computer.new("Computer"))
    @game = Game.new(p1,p2)
  end

  def self.instance
    @game
  end

end
