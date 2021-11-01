require_relative './player.rb'
require_relative './computer.rb'

class Game

  attr_accessor :result

  WEAPONS = [:paper, :scissors, :rock]

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def run_game
    @p1_weapon = @player_1.player_weapon.to_sym
    @p2_weapon = @player_2.player_weapon.to_sym
    @result = determine_result
    print_result
  end

  private

  def determine_result
    return 'draw' if @p1_weapon == @p2_weapon
    return 'loss' if @p1_weapon == WEAPONS[WEAPONS.index(@p2_weapon)-1]
    'win'
  end

  def print_result
    case @result
      when 'win' then "Contratulations #{@player_1.name}! YOU WIN"
      when 'loss' then "Sorry #{@player_1.name}! YOU LOST"
      when 'draw' then "Its a DRAW, #{@player_1.name}!"
    end
  end

end