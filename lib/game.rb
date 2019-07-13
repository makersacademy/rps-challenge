require_relative './random_weapon.rb'

class Game

  attr_reader :player_1_name, :player_1_weapon, :computer_weapon

  OUTCOMES =
  { 'rock' => { 'rock' => 'draw', 'paper' => 'lose', 'scissors' => 'win' },
  'paper' => { 'paper' => 'draw', 'rock' => 'win', 'scissors' => 'lose' },
  'scissors' => { 'scissors' => 'draw', 'rock' => 'lose', 'paper' => 'win' } }

  def initialize(player_1_name, computer_weapon = RandomWeapon.new.weapon )
    @player_1_name = player_1_name
    @player_1_weapon = 'rock'
    @computer_weapon = computer_weapon
  end

  def select_weapon(weapon)
    @player_1_weapon = weapon
  end

  def result
    OUTCOMES[@player_1_weapon][@computer_weapon]
  end

  def confirm_winner
    if result == 'win'
      "#{@player_1_weapon.capitalize} beats #{@computer_weapon.capitalize}. "\
      " #{@player_1_name} wins!"
    elsif result == 'draw'
      "#{@player_1_weapon.capitalize} is equal to "\
      "#{@computer_weapon.capitalize}. Draw"
    elsif result == 'lose'
      "#{@computer_weapon.capitalize} beats #{@player_1_weapon.capitalize}. "\
      " Computer wins"
    end
  end
end
