require_relative 'player'

class Game

  attr_reader :players, :choices

  def initialize(player)
    @players = [player]
    @choices = ["rock","paper","scissors"]
  end

  def first_player_name
    @players[0].name
  end

end
