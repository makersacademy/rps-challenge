require_relative 'player'
require_relative 'computer'

class Game

  RULES = { rock: :scissors, paper: :rock, scissors: :paper}
  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player, :computer

  def initialize(player_klass = Player.new(:name), computer_klass = Computer.new)
    @player = player_klass
    @computer = computer_klass
  end

  def result(player_weapon, choose_weapon)
    return :draw if draw(player_weapon, choose_weapon)
    return :lose if !beats(player_weapon, choose_weapon)
    return :win if beats(player_weapon, choose_weapon)
  end

  private

  def draw(player_weapon, choose_weapon)
    player_weapon == choose_weapon
  end

  def beats(player_weapon, choose_weapon)
    RULES[player_weapon] == choose_weapon
  end

end
