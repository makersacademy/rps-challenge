require_relative 'player'
require_relative 'computer'

class Game
  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }
  attr_reader :player, :result

  def initialize(player)
     @player = player
     @result = result
  end
  def self.create(player)
     @game = Game.new(player)
  end
  def self.instance
    @game
  end
  # def player_choice=(weapon)
  #   # fail 'not a possible weapon' unless WEAPONS.includes? weapon
  #   @player_choice = weapo
  # end
  def result
    return 'draw' if [player_choice]==[computer_choice]
    result = RULES[player_choice]==[computer_choice] ? :win : :lose
  end
end
