require_relative 'computer'

class Game

  attr_accessor :player

  def initialize(player_name)
    @player = player_name
    @computer = Computer.new
    @player_choice = nil
    @comp_choice = @computer.weapon
  end

  def player_choice(player_weapon)
    @player_weapon = player_weapon
  end

  def player_rock?
    @player_weapon == 'rock'
  end

  def player_paper?
    @player_weapon == 'paper'
  end

  def player_scissors?
    @player_weapon == 'scissors'
  end 



end
