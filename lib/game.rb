require_relative 'player'
require_relative 'weapon'

class Game

  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def the_winner_is
    winner = winning_weapon(@players[0].weapon, @players[1].weapon)
    return :draw if winner == :draw
    @players.find { |player| player.weapon == winner }
  end

  def random_weapon
    [:paper, :scissors, :stone][Kernel.rand(3)]
  end

  private

  def winning_weapon(weapon_1, weapon_2)
    rules = {
      :paper => { :paper => :draw, :scissors => :scissors, :stone => :paper },
      :scissors => { :paper => :scissors, :scissors => :draw, :stone => :stone },
      :stone => { :paper => :paper, :scissors => :stone, :stone => :draw }
    }
    rules[weapon_1][weapon_2]
  end

end
