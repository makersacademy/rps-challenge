require_relative 'object.rb'

class Game

  attr_reader :player, :random_weapon, :player_weapon

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(player)
    @random_weapon = Object.new.weapon
    @player = player
  end

  def self.new_game(player)
    @game = Game.new(player)
  end

  def self.current_game
    @game
  end

  def player_choice(choice)
     @player_weapon = choice.to_sym
   end

  def result(player_weapon, random_weapon)
    return :draw if draw(player_weapon, random_weapon)
    return :win if beats(player_weapon, random_weapon)
    return :lose
  end

  private

  def draw(choice1, choice2)
    choice1 == choice2
  end

  def beats(choice1, choice2)
    RULES[choice1] == choice2
  end

end
