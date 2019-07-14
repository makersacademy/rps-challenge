require_relative './random_weapon.rb'

class Game

  attr_reader :player_name, :player_weapon, :computer_weapon

  OUTCOMES =
  { :rock => { :rock => :draw, :paper => :lose, :scissors => :win },
  :paper => { :paper => :draw, :rock => :win, :scissors => :lose },
  :scissors => { :scissors => :draw, :rock => :lose, :paper => :win } }

  def initialize(player_name, computer_weapon = RandomWeapon.new.weapon)
    @player_name = player_name
    @player_weapon = :rock
    @computer_weapon = computer_weapon
  end

  def select_weapon(weapon)
    @player_weapon = weapon
  end

  def result
    OUTCOMES[@player_weapon.to_sym][@computer_weapon]
  end

  def confirm_winner
    if result == :win
      "#{@player_weapon.capitalize} beats #{@computer_weapon.capitalize}. "\
      " #{@player_name} wins!"
    elsif result == :draw
      "#{@player_weapon.capitalize} is equal to "\
      "#{@computer_weapon.capitalize}. Draw"
    elsif result == :lose
      "#{@computer_weapon.capitalize} beats #{@player_weapon.capitalize}. "\
      " Computer wins"
    end
  end
end
